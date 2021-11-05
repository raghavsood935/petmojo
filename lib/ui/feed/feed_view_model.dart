import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/feed_post_model.dart';
import 'package:tamely/models/my_tales_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class FeedViewModel extends BaseModel {
  final navigationService = locator<NavigationService>();

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

  List<FeedPostModel> _dummyFeedPostModel = [
    FeedPostModel(false, false),
    FeedPostModel(true, true),
    FeedPostModel(true, false),
  ];

  String _myProfileImg =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";
  String get myProfileImg => _myProfileImg;
  List<MyTalesModel> get dummyListOfTales => _dummyListOfTales;
  List<FeedPostModel> get dummyListOfFeedPost => _dummyFeedPostModel;

  void createPost() async {
    // List<CameraDescription> cameras = [];
    // cameras = await availableCameras();
    // navigationService.navigateTo(Routes.cameraScreen,
    //     arguments: CameraScreenArguments(cameras: cameras));
  }
}
