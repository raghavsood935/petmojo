import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kubelite/models/params/login_body.dart';
import 'package:kubelite/models/params/profile_create_body.dart';
import 'package:kubelite/models/params/register_body.dart';
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
  static const String user = '/user';
  static const String changePassword = '/auth/password';
  static const String facebookLogin = '/auth/login/facebook';
  static const String googleLogin = '/auth/login/google';
  static const String changeAvatar = '/user/avatar';
}

@RestApi(baseUrl: "https://tamely.herokuapp.com/api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(Apis.login)
  Future<UserResponse> login(@Body() LoginBody loginBody);

  @POST(Apis.facebookLogin)
  Future<UserResponse> facebookLogin(@Body() SocialLoginBody socialLoginBody);

  @POST(Apis.googleLogin)
  Future<UserResponse> googleLogin(@Body() SocialLoginBody socialLoginBody);

  @POST(Apis.register)
  Future<UserResponse> register(@Body() RegisterBody registerBody);

  @PUT(Apis.user)
  Future<UserResponse> updateProfile(@Body() ProfileCreateBody createBody);

  @PUT(Apis.changeAvatar)
  @MultiPart()
  Future<UserResponse> updateImage(@Part(name: 'image') File image);

  // @PUT(Apis.changePassword)
  // Future<BaseResponse<JsonObject>> changePassword(
  //     @Body() ChangePasswordBody changePasswordBody);
}
