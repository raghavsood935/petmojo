import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/services/services_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';

class ForYouTabViewModel extends ServicesViewModel {
  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();

  int _counter = 0;
  bool _isLoading = true;
  bool _isEndOfList = false;

  String profileImg = emptyProfileImgUrl;
  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool get isLoading => _isLoading;
  int get counter => _counter;
  bool get isEndOfList => _isEndOfList;

  Future postDetailsPage(FeedPostResponse postResponse) async {
    await _navigationService.navigateTo(
      Routes.postDetialsPageView,
      arguments: PostDetialsPageViewArguments(
        postResponse: postResponse,
      ),
    );
  }

  // void init(
  //   String _profileImg,
  //   bool _isHuman,
  //   String _petId,
  //   String _petToken,
  // ) {
  //   profileImg = _profileImg;
  //   isHuman = _isHuman;
  //   petId = _petId;
  //   petToken = _petToken;
  //   notifyListeners();
  // }

  Future getPosts(bool isSeeMore) async {
    print("COUNTER VALUE $_counter");
    _isLoading = true;
    if (!isSeeMore) {
      _dummyListOfPosts.clear();
      _counter = 0;
      notifyListeners();
    }
    notifyListeners();
    var result = await _tamelyApi.getForYouPost(CounterBody(_counter), isHuman,
        animalToken: petToken);
    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _isLoading = false;
      notifyListeners();
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      _dummyListOfPosts.addAll(result.data!.listOfPosts ?? []);
      if ((result.data!.listOfPosts ?? []).length < 20) {
        _isEndOfList = true;
        notifyListeners();
      }
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
    await _navigationService.navigateTo(Routes.forYouTabSearchView);
  }
}
