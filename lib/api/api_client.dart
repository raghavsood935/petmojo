import 'package:dio/dio.dart';
import 'package:kubelite/models/params/register_body.dart';
import 'package:kubelite/models/user_response_models.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

///APIs class is for api tags
class Apis {
  static const MAX_SIZE = 10;
  static const TIMEOUT = 6000;

  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String changePassword = '/auth/password';
}

@RestApi(baseUrl: "https://tamely.herokuapp.com/api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  // @POST(Apis.login)
  // Future<BaseResponse<UserResponse>> login(@Body() LoginBody loginBody);
  //
  @POST(Apis.register)
  Future<UserResponse> register(@Body() RegisterBody registerBody);

  // @PUT(Apis.changePassword)
  // Future<BaseResponse<JsonObject>> changePassword(
  //     @Body() ChangePasswordBody changePasswordBody);
}
