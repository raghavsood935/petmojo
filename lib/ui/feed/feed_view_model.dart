import 'package:camera/camera.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/my_tales_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class FeedViewModel extends BaseModel {
  final _bottomsheetService = locator<BottomSheetService>();
  final navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();

  List<MyTalesModel> _dummyListOfTales = [
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
  ];

  List<FeedPostResponse> _dummyFeedPostModel = [];

  String _myProfileImg =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";
  String get myProfileImg => _myProfileImg;
  List<MyTalesModel> get dummyListOfTales => _dummyListOfTales;
  List<FeedPostResponse> get dummyListOfFeedPost => _dummyFeedPostModel;

  void init() async {
    var result = await _tamelyApi.getFeedPosts();

    if (result.data != null) {
      _dummyFeedPostModel.addAll(result.data!.listOfPosts ?? []);
      notifyListeners();
    }
  }

  void createPost() async {
    List<CameraDescription> cameras = [];
    cameras = await availableCameras();
    navigationService.navigateTo(Routes.cameraScreen,
        arguments: CameraScreenArguments(cameras: cameras));
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
