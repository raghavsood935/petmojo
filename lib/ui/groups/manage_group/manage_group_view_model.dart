import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/String.dart';

class ManageGroupViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _bottomsheetService = locator<BottomSheetService>();
  final _snackBarService = locator<SnackbarService>();
  final sharedPreferenceService = locator<SharedPreferencesService>();
  final _tamelyApi = locator<TamelyApi>();

  String groupId = "";

  bool isHuman = false;
  String petId = "";
  String petToken = "";

  Future init(String grpId) async {
    CurrentProfile profile = sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;

    groupId = grpId;
    notifyListeners();
  }

  void back() {
    _navigationService.back();
  }

  Future gotToEditGrpInfo(
    String avatar,
    String name,
    String description,
    List<String> hashTag,
  ) async {
    _navigationService.navigateTo(
      Routes.editGroupBasicInfo,
      arguments: EditGroupBasicInfoArguments(
        groupId: groupId,
        avatar: avatar,
        name: name,
        hashTag: hashTag,
        description: description,
      ),
    );
  }

  Future gotToMember(bool isMember, bool isAdmin) async {
    _navigationService.navigateTo(Routes.membersView,
        arguments: MembersViewArguments(
            groupId: groupId, isMember: isMember, isAdmin: isAdmin));
  }

  Future gotToLocation() async {
    // _navigationService.navigateTo(Routes.editGroupBasicInfo,
    //     arguments: EditGroupBasicInfoArguments(groupId: groupId));
  }

  Future deleteGroup() async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.DeletePostBottomSheet,
      barrierDismissible: true,
      isScrollControlled: true,
      title: deleteGroupConfirmation,
      mainButtonTitle: "DELETE",
      secondaryButtonTitle: "CANCEL",
    );

    if (int.parse(sheetResponse!.data.toString()) == 1) {
      var response = await _tamelyApi
          .deleteGroup(GroupBasicBody(groupId), isHuman, petToken: petToken);
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        if (error.getErrorMessage() == "Received invalid status code: 403") {
          _snackBarService.showSnackbar(
              message: "You don't have required permissions");
        } else {
          _snackBarService.showSnackbar(message: error.getErrorMessage());
        }
      } else if (response.data != null) {
        if (response.data!.success ?? false) {
          _navigationService.back();
        }
        _snackBarService.showSnackbar(message: response.data!.message ?? "");
      }
    }
  }
}
