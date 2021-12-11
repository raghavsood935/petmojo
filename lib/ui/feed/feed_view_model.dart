import 'package:camera/camera.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/my_tales_model.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';

class FeedViewModel extends BaseModel {
  final _bottomsheetService = locator<BottomSheetService>();
  final navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();

  List<MyTalesModel> _dummyListOfTales = [];

  List<FeedPostResponse> _dummyFeedPostModel = [];

  int _counter = 0;
  bool _isLoading = true;

  String _myProfileImg =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";
  String _userId = "";
  String get myProfileImg => _myProfileImg;
  String get userId => _userId;
  bool get isLoading => _isLoading;
  int get counter => _counter;

  List<MyTalesModel> get dummyListOfTales => _dummyListOfTales;
  List<FeedPostResponse> get dummyListOfFeedPost => _dummyFeedPostModel;

  void init() async {
    var userDetialResult = await _tamelyApi.getUserProfileDetail();

    if (userDetialResult.data != null) {
      _myProfileImg =
          userDetialResult.data!.userDetailsModel!.avatar ?? emptyProfileImgUrl;
      _userId = userDetialResult.data!.userDetailsModel!.Id ?? "";
      notifyListeners();
    }

    // seeMorePost();
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
        LikeDislikePostBody(postID, vote, VoterDetails("User", _userId));

    await _tamelyApi.likeOrDislikeThePost(body, true);
  }

  void createPost() async {
    //List<CameraDescription> cameras = [];
    //cameras = await availableCameras();
    // navigationService.navigateTo(Routes.cameraScreen,
    //     arguments: CameraScreenArguments(cameras: cameras));
    //navigationService.navigateTo(Routes.postDetialsPageView);
    navigationService.navigateTo(Routes.postCreation);
  }

  Future showComments() async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.CommentsBottomSheet,
      isScrollControlled: true,
      barrierDismissible: false,
      customData: _myProfileImg,
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
