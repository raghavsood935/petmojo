import 'package:dio/dio.dart' hide Headers;

class ServerError implements Exception {
  int? _errorCode;
  String _errorMessage = "";

  ServerError.withError({DioError? error}) {
    _handleError(error);
  }

  getErrorCode() {
    return _errorCode;
  }

  getErrorMessage() {
    return _errorMessage;
  }

  _handleError(DioError? error) {
    if (error == null) {
      _errorMessage = "No error";
    } else
      switch (error.type) {
        case DioErrorType.cancel:
          _errorMessage = "Request was cancelled";
          break;
        case DioErrorType.connectTimeout:
          _errorMessage = "Connection timeout";
          break;
        case DioErrorType.other:
          _errorMessage = "Connection failed due to internet connection";
          break;
        case DioErrorType.receiveTimeout:
          _errorMessage = "Receive timeout in connection";
          break;
        case DioErrorType.response:
          _errorMessage =
              "Received invalid status code: ${error.response?.statusCode}";
          break;
        case DioErrorType.sendTimeout:
          _errorMessage = "Receive timeout in send request";
          break;
      }
    return _errorMessage;
  }
}
