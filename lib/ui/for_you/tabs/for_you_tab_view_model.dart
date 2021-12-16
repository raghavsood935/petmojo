import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/list_of_feed_post_response.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';

class ForYouTabViewModel extends BaseModel {
  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  String? _forYouSerachView = Routes.forYouTabSearchView;
  dynamic _destinationArguments;

  int _counter = 0;
  bool _isLoading = true;

  String profileImg = emptyProfileImgUrl;
  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool get isLoading => _isLoading;
  int get counter => _counter;

  Future _forYouSearchViewRoute() async {
    if (_forYouSerachView != null) {
      await _navigationService.navigateTo(
        _forYouSerachView!,
        arguments: _destinationArguments,
      );
    }
  }

  Future postDetailsPage(FeedPostResponse postResponse) async {
    await _navigationService.navigateTo(
      Routes.postDetialsPageView,
      arguments: PostDetialsPageViewArguments(
        postResponse: postResponse,
      ),
    );
  }

  void init(
    String _profileImg,
    bool _isHuman,
    String _petId,
    String _petToken,
  ) {
    profileImg = _profileImg;
    isHuman = _isHuman;
    petId = _petId;
    petToken = _petToken;
    notifyListeners();
  }

  Future getPosts() async {
    print("COUNTER VALUE $_counter");
    _isLoading = true;
    notifyListeners();
    var result = await _tamelyApi.getForYouPost(CounterBody(_counter), true);
    if (result.data != null) {
      _dummyListOfPosts.addAll(result.data!.listOfPosts ?? []);
      _counter++;
      _isLoading = false;
      notifyListeners();
    }
  }

  List<String> _vidoes = [];

  List<FeedPostResponse> _dummyListOfPosts = [];

  List<FeedPostResponse> get dummyListOfPosts => _dummyListOfPosts;

  List<String> get vidoes => _vidoes;

  void goToSearchView() async {
    await _forYouSearchViewRoute();
  }
}
