import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/my_tales_model.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';

class FeedViewModel extends BaseModel {
  final _bottomsheetService = locator<BottomSheetService>();
  final _sharedPrefernceService = locator<SharedPreferencesService>();
  final navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  List<MyTalesModel> _dummyListOfTales = [];

  List<FeedPostResponse> _dummyFeedPostModel = [];

  int _counter = 0;
  bool _isLoading = true;

  String myProfileImg = emptyProfileImgUrl;
  String userId = "";

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool get isLoading => _isLoading;
  int get counter => _counter;

  List<MyTalesModel> get dummyListOfTales => _dummyListOfTales;
  List<FeedPostResponse> get dummyListOfFeedPost => _dummyFeedPostModel;

  void init() async {
    CurrentProfile profile = _sharedPrefernceService.getCurrentProfile();
    this.isHuman = profile.isHuman;
    this.myProfileImg = profile.profileImgUrl == null
        ? emptyProfileImgUrl
        : profile.profileImgUrl;
    this.petId = profile.petId;
    this.petToken = profile.petToken;
    this.userId = profile.userId;
    notifyListeners();

    seeMorePost();
  }

  Future seeMorePost({bool fromRefresh = false}) async {
    print("COUNTER VALUE $_counter");
    if (fromRefresh) {
      _counter = 0;
      notifyListeners();
    }
    _isLoading = true;
    notifyListeners();
    var result = await _tamelyApi.getFeedPosts(CounterBody(_counter), isHuman,
        animalToken: petToken);
    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
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

  void createPost() async {
    navigationService.navigateTo(Routes.postCreation);
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
        inspecterProfileType: GlobalMethods.getProfileType(isHuman),
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
        inspecterProfileType: GlobalMethods.getProfileType(isHuman),
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

  void showMde(String mes) {
    _snackBarService.showSnackbar(message: mes);
  }
}
