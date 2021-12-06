import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/list_of_for_you_post_response.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/models/post_response.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class ForYouTabViewModel extends BaseModel {
  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  String? _forYouSerachView = Routes.forYouTabSearchView;
  dynamic _destinationArguments;

  int _counter = 0;
  bool _isLoading = true;

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

  List<ForYouPostResponse> _dummyListOfPosts = [];

  List<ForYouPostResponse> get dummyListOfPosts => _dummyListOfPosts;

  List<String> get vidoes => _vidoes;

  void goToSearchView() async {
    await _forYouSearchViewRoute();
  }
}
