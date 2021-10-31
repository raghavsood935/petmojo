import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kubelite/models/common_response.dart';
import 'package:kubelite/models/params/login_body.dart';
import 'package:kubelite/models/params/profile_create_body.dart';
import 'package:kubelite/models/params/register_body.dart';
import 'package:kubelite/models/params/reset_password_body.dart';
import 'package:kubelite/models/params/social_login_body.dart';
import 'package:kubelite/models/user_response_models.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

///APIs class is for api tags
class Apis {
  static const MAX_SIZE = 10;
  static const TIMEOUT = 6000;

  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String checkUserName = '/user/isusernameavailable/{username}';
  static const String user = '/user';
  static const String changePassword = '/auth/password';
  static const String resetPassword = '/auth/reset-password-mail';
  static const String updatePassword = '/auth/update-password';
  static const String verifyAccount = '/auth/resendotp/{num}';
  static const String confirmAccount = '/user/confirm';
  static const String verifyResetPassword = '/auth/verify-reset-otp';
  static const String facebookLogin = '/auth/login/facebook';
  static const String googleLogin = '/auth/login/google';
  static const String changeAvatar = '/user/avatar';
}

@RestApi(baseUrl: "https://tamely.herokuapp.com/api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(Apis.login)
  Future<UserResponse> login(@Body() LoginBody loginBody);

  @PATCH(Apis.resetPassword)
  Future<CommonResponse> resetPassword(
      @Body() ResetPasswordBody resetPasswordBody);

  @PATCH(Apis.updatePassword)
  Future<CommonResponse> updatePassword(
      @Body() UpdatePasswordBody updatePasswordBody);

  /*
  path can be /login or /forgetpwd
  For login verification and reset password verification
   */
  @POST(Apis.verifyAccount)
  Future<CommonResponse> verifyAccount(@Path() String type);

  @PUT(Apis.confirmAccount)
  Future<CommonResponse> confirmAccount(@Body() ConfirmOTPBody confirmOTPBody);

  @PUT(Apis.verifyResetPassword)
  Future<CommonResponse> verifyResetPassword(
      @Body() ConfirmOTPBody confirmOTPBody);

  @POST(Apis.facebookLogin)
  Future<UserResponse> facebookLogin(@Body() SocialLoginBody socialLoginBody);

  @POST(Apis.googleLogin)
  Future<UserResponse> googleLogin(@Body() SocialLoginBody socialLoginBody);

  @POST(Apis.register)
  Future<UserResponse> register(@Body() RegisterBody registerBody);

  @GET(Apis.checkUserName)
  Future<UserNameAvailableResponse> checkUserName(
      @Path("username") String username);

  @PUT(Apis.user)
  Future<UserResponse> updateProfile(@Body() ProfileCreateBody createBody);

  @PUT(Apis.changeAvatar)
  @MultiPart()
  Future<UserResponse> updateImage(@Part(name: 'image') File image);

  // @PUT(Apis.changePassword)
  // Future<BaseResponse<JsonObject>> changePassword(
  //     @Body() ChangePasswordBody changePasswordBody);
}
