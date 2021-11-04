import 'package:dio/dio.dart' hide Headers;
import 'package:logger/logger.dart';
import 'package:tamely/app/app.logger.dart';

class ServerError implements Exception {
  int? _errorCode;
  String _errorMessage = "";
  final log = Logger(printer: SimpleLogPrinter('ServerError'));

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
    } else {
      log.e("Error $error ${error.type}");
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
          String jsonString = error.response?.data?.toString() ?? "";
          log.e("JsonString $jsonString");
          if (jsonString.isNotEmpty && jsonString.contains("error:")) {
            String errorMessage = jsonString.split(":")[1];
            if (errorMessage.isNotEmpty) {
              _errorMessage = errorMessage.replaceAll("}", "");
            }
          }
          break;
        case DioErrorType.sendTimeout:
          _errorMessage = "Receive timeout in send request";
          break;
      }
    }
    log.e("ErrorMessage $_errorMessage");
    return _errorMessage;
  }
}
