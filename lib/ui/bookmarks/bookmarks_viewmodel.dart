import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/feed_post_response.dart';

import 'package:tamely/models/get_bookmarks_model.dart';

import 'package:tamely/api/api_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';

class BookmarksViewModel extends FutureViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _tamelyApi = locator<TamelyApi>();

  bool isHuman = true;
  String petID = "";
  String petToken = "";

  List<FeedPostResponse> listOfBookmark = [];

  // String _sId = "";
  // List _hashtags = [];
  // int _totalVotes = 0;
  // int _totalComments = 0;
  // int _iV = 0;
  //
  // String _image = "";
  // String _thumbnail = "";
  // String _caption = "";
  // String _filter = "";
  // String _author = "";
  // String _date = "";

  // String get image => _image;
  //
  // String get thumbnail => _thumbnail;
  //
  // String get caption => _caption;
  //
  // String get filter => _filter;
  // String get date => _date;
  // String get author => _author;
  // String get sId => _sId;
  //
  // int get totalVotes => _totalVotes;
  // int get totalComments => _totalComments;
  //
  // int get iV => _iV;

  void onInit() {
    CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petID = profile.petId;
    petToken = profile.petToken;

    notifyListeners();
    getBookmarksDetails();
  }

  Future getBookmarksDetails() async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      BaseResponse<getBookmarks> response =
          await _tamelyApi.getBookmarksDetails(isHuman, animalToken: petToken);
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
        _navigationService.back();
      } else if (response.data != null) {
        listOfBookmark.addAll(response.data!.listOfBookmarks ?? []);
        _dialogService.completeDialog(DialogResponse(confirmed: true));
        notifyListeners();
      } else {
        _navigationService.back();
      }
    });
  }

  void goToPostDetailsView(FeedPostResponse postResponse) async {
    var result = await _navigationService.navigateTo(
        Routes.singlePostDetailsView,
        arguments: SinglePostDetailsViewArguments(postResponse: postResponse));
  }

  Future setValues(getBookmarks response) async {
    // _image = response.image ?? "";
    // _totalVotes = response.totalVotes ?? 0;
    // _totalComments = response.totalComments ?? 0;
    // _iV = response.iV ?? 0;
    // _author = response.author ?? "";
    // _filter = response.filter ?? "";
    // _date = response.date ?? "";
    // _caption = response.caption ?? "";
    // _thumbnail = response.thumbnail ?? "";
    // _hashtags = response.hashtags ?? [];
    // _dialogService.completeDialog(DialogResponse(confirmed: true));
    notifyListeners();
  }

  @override
  Future futureToRun() {
    // TODO: implement futureToRun
    throw UnimplementedError();
  }
}
