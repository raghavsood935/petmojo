import 'package:kubelite/api/api_service.dart';
import 'package:kubelite/api/base_response.dart';
import 'package:kubelite/api/server_error.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/models/application_models.dart';
import 'package:kubelite/models/params/register_body.dart';
import 'package:kubelite/models/user_response_models.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:stacked_services/stacked_services.dart';

class UserService {
  final log = getLogger('UserService');

  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  LocalUser? _currentUser;

  LocalUser get currentUser => _currentUser!;

  bool get hasLoggedInUser => _sharedPreferenceService.authToken.isNotEmpty;

  Future<void> createAccount(RegisterBody registerBody) async {
    log.v('We have no user account. Create a new user ...');
    // await _firestoreApi.createUser(user: user);
    // _currentUser = user;
    BaseResponse<UserResponse> response =
        await _tamelyApi.createAccount(registerBody);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _currentUser = response.data!.localUser;
      _sharedPreferenceService.authToken = response.data!.token ?? "";
      log.v('_currentUser has been saved');
    }
  }
}
