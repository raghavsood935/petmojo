import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

///APIs class is for api tags
class Apis {
  static const MAX_SIZE = 10;
  static const TIMEOUT = 6000;
  static const String users = '/users';
}

@RestApi(baseUrl: "https://localhost/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
}
