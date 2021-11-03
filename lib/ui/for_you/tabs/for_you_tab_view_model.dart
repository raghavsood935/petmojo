import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class ForYouTabViewModel extends BaseModel {
  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  String? _forYouSerachView = Routes.forYouTabSearchView;
  dynamic _destinationArguments;

  Future _forYouSerachViewRoute() async {
    if (_forYouSerachView != null) {
      await _navigationService.navigateTo(
        _forYouSerachView!,
        arguments: _destinationArguments,
      );
    }
  }

  List<String> _vidoes = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
  ];

  List<String> _dummyListOfPosts = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
  ];

  List<String> get dummyListOfPosts => _dummyListOfPosts;

  List<String> get vidoes => _vidoes;

  void goToSearchView() async {
    await _forYouSerachViewRoute();
  }
}
