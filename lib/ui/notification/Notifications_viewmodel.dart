import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NotificationViewModel extends FutureViewModel<void>
    implements Initialisable {
  final _sharedPrefService = locator<SharedPreferencesService>();

  final _snackbarService = locator<SnackbarService>();

  @override
  Future initialise() {
    super.initialise();
    _sharedPrefService.currentState = getRedirectStateName(RedirectState.Home);
    return Future.value(0);
  }

  @override
  Future<void> futureToRun() async {
    notifyListeners();
    return Future.value(0);
  }

  /// Called when an error occurs within the future being run
  @override
  void onError(error) {
    print('error=' + error.toString());
    this.setError(error);
    _snackbarService.showSnackbar(message: 'Please try later.');
  }

  /// Called after the data has been set
  @override
  void onData(void data) async {
    setBusy(true);
    setBusy(false);
    notifyListeners();
  }

  void onNotificationPressed() {}

  void onChatPressed() {}
}

class UserNotification {
  static List<Map> notifications = [
    {
      'username': 'Sam Haris',
      'content': ' has liked your photo',
      'comment': '',
      'follow': ' has requested to follow you.',
      'userimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
      'postimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    },
    {
      'username': 'Sam Haris',
      'content': ' has liked your photo',
      'comment': '',
      'follow': ' has requested to follow you.',
      'userimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
      'postimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    },
    {
      'username': 'Sam Haris',
      'content': ' has liked your photo',
      'comment': '',
      'follow': ' has requested to follow you.',
      'userimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
      'postimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    },
    {
      'username': 'Sam Haris',
      'content': ' has commented on your photo:',
      'comment': ' "lets meet up!"',
      'follow': ' has requested to follow you.',
      'userimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
      'postimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    },
    {
      'username': 'Sam Haris',
      'content': ' has commented on your photo:',
      'comment': ' "lets meet up!"',
      'follow': ' has requested to follow you.',
      'userimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
      'postimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    },
    {
      'username': 'Sam Haris',
      'content': ' has commented on your photo:',
      'comment': ' "lets meet up!"',
      'follow': ' has requested to follow you.',
      'userimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
      'postimg':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    },
  ];
}
