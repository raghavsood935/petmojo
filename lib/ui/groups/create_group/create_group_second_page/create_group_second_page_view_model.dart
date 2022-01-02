import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/params/groups/change_group_description_body.dart';
import 'package:tamely/models/params/groups/update_group_hashtags_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class CreateGroupSecondViewModel extends BaseModel {
  TextEditingController descriptioinTC = TextEditingController();
  TextEditingController hashtagTC = TextEditingController();

  final _sharedPrefService = locator<SharedPreferencesService>();

  List<String> listOfHashtags = [];

  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final navigationService = locator<NavigationService>();

  bool isDescriptionLoading = false;
  bool isHashtagsLoading = false;

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool successDescription = true;
  bool successHashtag = true;

  bool isValid = false;

  String groupId = "";

  Future init(String grpId, String desc, List<String> hashtag) async {
    groupId = grpId;
    descriptioinTC.text = desc;
    listOfHashtags.addAll(hashtag);

    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;

    notifyListeners();
  }

  Future onTFChanged() async {
    isValid = (descriptioinTC.text.isNotEmpty || listOfHashtags.isNotEmpty);
    notifyListeners();
  }

  Future addHashTag() async {
    if (listOfHashtags.contains(hashtagTC.text)) {
      _snackBarService.showSnackbar(message: "This tag is already added");
    } else {
      listOfHashtags.add(hashtagTC.text);
      hashtagTC.clear();
      notifyListeners();
    }
  }

  Future deleteHashTag(String value) async {
    listOfHashtags.remove(value);
    notifyListeners();
  }

  Future onContinuePressed() async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    successDescription = false;
    successHashtag = false;
    notifyListeners();
    if (descriptioinTC.text.isNotEmpty) {
      isDescriptionLoading = true;
      notifyListeners();
      var response = await _tamelyApi.changeDescription(
        ChangeGroupDescriptionBody(groupId, descriptioinTC.text),
        isHuman,
        animalToken: petToken,
      );
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        isDescriptionLoading = false;
        notifyListeners();
        if (error.getErrorMessage() == " Received invalid status code: 403") {
          _snackBarService.showSnackbar(
              message: "You don't have required permissions");
        } else {
          _snackBarService.showSnackbar(message: error.getErrorMessage());
        }
      } else if (response.data != null) {
        if (response.data!.success ?? false) {
          successDescription = true;
          notifyListeners();
        } else {
          _snackBarService.showSnackbar(message: response.data!.message ?? "");
        }
        isDescriptionLoading = false;
        notifyListeners();
      }
    } else {
      successDescription = true;
      isDescriptionLoading = false;
      notifyListeners();
    }

    if (listOfHashtags.isNotEmpty) {
      isHashtagsLoading = true;
      notifyListeners();
      var response = await _tamelyApi.updateHashtags(
        UpdateGroupHashtagsBody(groupId, listOfHashtags),
        isHuman,
        animalToken: petToken,
      );
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        isHashtagsLoading = false;
        notifyListeners();
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        if (response.data!.success ?? false) {
          successHashtag = true;
          notifyListeners();
        } else {
          _snackBarService.showSnackbar(message: response.data!.message ?? "");
        }
        isHashtagsLoading = false;
        notifyListeners();
      }
    } else {
      successHashtag = true;
      isHashtagsLoading = false;
      notifyListeners();
    }
  }

  Future goToNextPage(bool isFromEditView) async {
    if (successDescription && successHashtag) {
      if (isFromEditView) {
        navigationService.back();
        navigationService.replaceWith(
          Routes.groupInfoView,
          arguments: GroupInfoViewArguments(groupId: groupId),
        );
      } else {
        navigationService.replaceWith(
          Routes.createGroupThirdView,
          arguments: CreateGroupThirdViewArguments(
              groupId: groupId, isFromEditView: false),
        );
      }
    }
  }
}
