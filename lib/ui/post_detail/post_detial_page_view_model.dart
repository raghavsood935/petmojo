import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';

class PostDetialsPageViewModel extends BaseModel {
  final _bottomsheetService = locator<BottomSheetService>();
  final _snackBarService = locator<SnackbarService>();
  final navigationService = locator<NavigationService>();
  final sharedPreferenceService = locator<SharedPreferencesService>();
  final _tamelyApi = locator<TamelyApi>();

  List<FeedPostResponse> _dummyFeedPostModel = [];

  int _counter = 0;
  bool _isLoading = true;

  String myProfileImg =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";
  String userId = "";

  bool isHuman = false;
  String petId = "";
  String petToken = "";

  bool get isLoading => _isLoading;
  int get counter => _counter;

  List<FeedPostResponse> get dummyListOfFeedPost => _dummyFeedPostModel;

  void back() {
    navigationService.back();
  }

  void init(FeedPostResponse postResponse) async {
    CurrentProfile profile = sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    userId = profile.userId;
    myProfileImg = profile.profileImgUrl;
    notifyListeners();

    // _snackBarService.showSnackbar(message: myProfileImg);

    // var userDetialResult = await _tamelyApi.getUserProfileDetail();

    // if (userDetialResult.data != null) {
    //   myProfileImg =
    //       userDetialResult.data!.userDetailsModel!.avatar ?? emptyProfileImgUrl;
    //   _userId = userDetialResult.data!.userDetailsModel!.Id ?? "";
    //   notifyListeners();
    // }
    _dummyFeedPostModel.insert(0, postResponse);
    notifyListeners();
    seeMorePost();
  }

  Future seeMorePost() async {
    print("COUNTER VALUE $_counter");
    _isLoading = true;
    notifyListeners();
    var result = await _tamelyApi.getFeedPosts(CounterBody(_counter), true);
    if (result.data != null) {
      _dummyFeedPostModel.addAll(result.data!.listOfPosts ?? []);
      _counter++;
      _isLoading = false;
      notifyListeners();
    }
  }

  Future likeOrDislikePost(String postID, bool vote) async {
    print("INSIDE LIKE");
    LikeDislikePostBody body =
        LikeDislikePostBody(postID, vote, VoterDetails("User", userId));

    await _tamelyApi.likeOrDislikeThePost(body, true);
  }

  Future bookmarkAction(String postID) async {
    await _tamelyApi.bookmarkActionPost(postID, true);
  }

  Future inspectProfile(BuildContext ct, String profileID) async {
    await navigationService.navigateTo(
      Routes.profileView,
      arguments: ProfileViewArguments(
        menuScreenContext: ct,
        onScreenHideButtonPressed: () {},
        isInspectView: true,
        inspecterProfileId: userId,
        inspectProfileId: profileID,
      ),
    );
  }

  Future inspectAnimalProfile(
      BuildContext ct, String petId, String petToken) async {
    await navigationService.navigateTo(
      Routes.animalProfileView,
      arguments: AnimalProfileViewArguments(
        isFromDashboard: false,
        isInspectView: true,
        id: petId,
        token: petToken,
        inspecterProfileId: userId,
        inspecterProfileType: isHuman ? "User" : "Animal",
      ),
    );
  }

  Future showComments(String postId) async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.CommentsBottomSheet,
      data: postId,
      isScrollControlled: true,
      barrierDismissible: false,
      customData: myProfileImg,
    );

    if (sheetResponse != null) {
      print("Confirmed : ${sheetResponse.confirmed}");
      notifyListeners();
    }
  }

  Future showMoreOptions() async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.MoreOptionBottomSheet,
      isScrollControlled: true,
      barrierDismissible: true,
    );

    if (sheetResponse != null) {
      print("Confirmed : ${sheetResponse.confirmed}");
      notifyListeners();
    }
  }
}
