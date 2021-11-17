import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/login_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/params/register_body.dart';
import 'package:tamely/models/params/reset_password_body.dart';
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/user_response_models.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/util/string_extension.dart';

class UserService {
  final log = getLogger('UserService');

  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  LocalUser? _currentUser;

  set currentUser(LocalUser value) {
    _currentUser = value;
    _sharedPreferenceService.saveCurrentUser(value);
  }

  LocalUser get currentUser {
    if (_currentUser != null) {
      return _currentUser!;
    } else {
      return _sharedPreferenceService.getCurrentUser();
    }
  }

  bool get hasLoggedInUser => currentUser.username.isValid();

  Future<BaseResponse<UserResponse>> updateProfile(
      ProfileCreateBody body) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    log.v('We have no user account. Create a new user ...');
    BaseResponse<UserResponse> response =
        await _tamelyApi.updateUserProfile(body);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _currentUser = response.data!.localUser;
      _sharedPreferenceService.authToken = response.data!.token ?? "";
      log.v('_currentUser has been saved');
    }
    return response;
  }

  Future<void> createAccount(RegisterBody registerBody) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    log.v('We have no user account. Create a new user ...');
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

  Future<void> loginAccount(LoginBody loginBody) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    log.v('We have logging you in ...');
    BaseResponse<UserResponse> response =
        await _tamelyApi.loginAccount(loginBody);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _currentUser = response.data!.localUser;
      _sharedPreferenceService.authToken = response.data!.token ?? "";
      log.v('_currentUser has been saved');
    }
  }

  Future<void> verifyAccount(String verificationType) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    log.v('verifyAccount');
    BaseResponse<CommonResponse> response =
        await _tamelyApi.verifyAccount(verificationType);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _snackBarService.showSnackbar(
          message: response.data!.message ?? "OTP has been sent successfully!");
    }
  }

  Future<BaseResponse<CommonResponse>> confirmAccount(
      ConfirmOTPBody confirmOTPBody, String verificationType) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    log.v('verifyAccount');
    return await _tamelyApi.confirmAccount(confirmOTPBody, verificationType);
  }

  Future<BaseResponse<CommonResponse>> updatePassword(
      UpdatePasswordBody updatePasswordBody) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    log.v('updatePassword');
    return await _tamelyApi.updatePassword(updatePasswordBody);
  }

  Future<void> socialLogin(
      SocialLoginBody socialLoginBody, bool isFacebook) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    log.v('We have logging you in ...');
    late BaseResponse<UserResponse> response;
    if (isFacebook) {
      response = await _tamelyApi.facebookLogin(socialLoginBody);
    } else {
      response = await _tamelyApi.googleLogin(socialLoginBody);
    }

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
