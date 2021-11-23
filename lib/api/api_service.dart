import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/models/animal_profile_create_resopnse.dart';
import 'package:tamely/models/animal_profile_detail_model.dart';
import 'package:tamely/models/params/animal_profile_create_body.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/edit_animal_profile_details_body.dart';
import 'package:tamely/models/params/login_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/params/register_body.dart';
import 'package:tamely/models/params/reset_password_body.dart';
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/params/change_bio_avatar_body.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/models/user_response_models.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/ui/otp/confirm_otp_viewmodel.dart';
import 'package:tamely/models/get_appointment_details_response.dart';
import 'package:tamely/models/get_pet_details_response.dart';
import 'package:tamely/models/get_report_response.dart';
import 'package:tamely/models/get_scroll_status_response.dart';
import 'package:tamely/models/my_appointments_response.dart';
import 'package:tamely/models/params/book_a_run_body.dart';
import 'package:tamely/models/params/change_appointment_status_body.dart';
import 'package:tamely/models/params/get_appointment_details_body.dart';
import 'package:tamely/models/params/get_runone_report_body.dart';
import 'package:tamely/models/params/get_runtwo_report_body.dart';
import 'package:tamely/models/params/get_scroll_status_body.dart';
import 'package:tamely/models/params/set_runone_rating_body.dart';
import 'package:tamely/models/params/set_runtwo_rating_body.dart';
import 'package:tamely/models/params/set_testimony_body.dart';
import 'package:tamely/models/send_data_response.dart';

import 'api_client.dart';

class TamelyApi {
  final _sharedPreferenceServices = locator<SharedPreferencesService>();

  final log = Logger(printer: SimpleLogPrinter('TamelyApi'));

  Dio dio = Dio(BaseOptions(
    connectTimeout: Apis.TIMEOUT,
    receiveTimeout: Apis.TIMEOUT,
    headers: {
      HttpHeaders.acceptHeader: "accept: application/json",
      'Accept': "application/json",
      // 'Authorization': 'Bearer $token',
    },
    contentType: "application/json",
  ));

  Dio formDio = Dio(BaseOptions(
    connectTimeout: Apis.TIMEOUT,
    receiveTimeout: Apis.TIMEOUT,
    headers: {
      HttpHeaders.acceptHeader: "accept: application/json",
      'Accept': "application/json",
      // 'Authorization': 'Bearer $token',
    },
    contentType: "application/x-www-form-urlencoded",
  ));

  dynamic getApiClient(bool isAuth) {
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));

    dio.options.followRedirects = false;
    dio.options.headers['content-Type'] = 'application/json';

    if (isAuth) {
      dio.options.headers["authorization"] =
          "${_sharedPreferenceServices.authToken}";
      log.d("TOKEN :: ${_sharedPreferenceServices.authToken}");
    }
    return ApiClient(dio);
  }

  dynamic getMultiPartApiClient() {
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));

    dio.options.followRedirects = false;
    dio.options.headers['content-Type'] = 'multipart/form-data';
    dio.options.headers["authorization"] =
        "${_sharedPreferenceServices.authToken}";
    return ApiClient(dio);
  }

  dynamic getFormApiClient(bool isAuth) {
    formDio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));

    formDio.options.followRedirects = false;
    formDio.options.headers['content-Type'] = 'application/json';
    if (isAuth) {
      dio.options.headers["authorization"] =
          "${_sharedPreferenceServices.authToken}";
    }
    return ApiClient(formDio);
  }

  Future<BaseResponse<CommonResponse>> uploadImage(File imageFile) async {
    CommonResponse response;
    try {
      response = await getMultiPartApiClient().updateImage(imageFile);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserResponse>> updateUserProfile(
      ProfileCreateBody createBody) async {
    UserResponse response;
    try {
      response = await getApiClient(true).updateProfile(createBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserResponse>> createAccount(
      RegisterBody registerBody) async {
    log.d("createAccount called");
    UserResponse response;
    try {
      response = await getApiClient(false).register(registerBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> verifyAccount(String num) async {
    log.d("verifyAccount called");
    CommonResponse response;
    try {
      response = await getApiClient(true).verifyAccount(num);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> confirmAccount(
      ConfirmOTPBody confirmOTPBody, String verificationType) async {
    log.d("confirmAccount called");
    CommonResponse response;
    try {
      if (verificationType == getVerificationTypeName(VerificationType.login))
        response = await getApiClient(true).confirmAccount(confirmOTPBody);
      else
        response = await getApiClient(true).verifyResetPassword(confirmOTPBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> updatePassword(
      UpdatePasswordBody updatePasswordBody) async {
    log.d("updatePassword called");
    CommonResponse response;
    try {
      response = await getApiClient(true).updatePassword(updatePasswordBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserResponse>> loginAccount(LoginBody loginBody) async {
    log.d("loginAccount called");
    UserResponse response;
    try {
      response = await getApiClient(false).login(loginBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> resetPassword(
      ResetPasswordBody resetPasswordBody) async {
    CommonResponse response;
    try {
      response = await getApiClient(false).resetPassword(resetPasswordBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserNameAvailableResponse>> checkUserName(
      String userName) async {
    log.d("checkUserName called");
    UserNameAvailableResponse response;
    try {
      response = await getApiClient(true).checkUserName(userName);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserProfileDetailsResponse>>
      getUserProfileDetail() async {
    log.d("get user profile details");
    UserProfileDetailsResponse response;
    try {
      response = await getApiClient(true).getUserProfileDetails();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserResponse>> facebookLogin(
      SocialLoginBody socialLoginBody) async {
    log.d("facebookLogin called");
    UserResponse response;
    try {
      response = await getApiClient(false).facebookLogin(socialLoginBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserResponse>> googleLogin(
      SocialLoginBody socialLoginBody) async {
    log.d("googleLogin called");
    UserResponse response;
    try {
      response = await getApiClient(false).googleLogin(socialLoginBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> getUserPosts() async {
    CommonResponse response;
    try {
      response = await getApiClient(true).getUserPosts();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> changeBioAndAvatar(
      ChangeBioAvatarBody changeBioAvatarBody) async {
    CommonResponse response;
    try {
      response =
          await getApiClient(true).changeBioAndAvatar(changeBioAvatarBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<AnimalProfileCreateResopnse>> createAnimalProfile(
    String name,
    String username,
    File avatar,
    String category,
    String bio,
    String animalType,
    String gender,
    String breed,
    String age,
    bool mating,
    bool adoption,
    bool playBuddies,
    bool registeredWithKennelClub,
    String playFrom,
    String playTo,
    String location,
  ) async {
    log.d("create animal profile called");
    AnimalProfileCreateResopnse response;
    try {
      response = await getApiClient(true).animalProfileCreate(
        name,
        username,
        avatar,
        category,
        bio,
        animalType,
        gender,
        breed,
        age,
        mating,
        adoption,
        playBuddies,
        registeredWithKennelClub,
        playFrom,
        playTo,
        location,
      );
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<AnimalProfileDetailModelResponse>> getAnimalProfileDetail(
      AnimalProfileDetailsBody animalProfileDetailsBody) async {
    AnimalProfileDetailModelResponse response;
    try {
      response = await getApiClient(true)
          .getAnimalProfileDetail(animalProfileDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<AnimalProfileDetailModelResponse>>
      editAnimalProfileDetails(
          EditAnimalProfileDetailsBody editAnimalProfileDetailsBody) async {
    AnimalProfileDetailModelResponse response;
    try {
      response = await getApiClient(true)
          .editAnimalProfileDetails(editAnimalProfileDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // Booking Appointments

  // -- Get Pet Details
  Future<BaseResponse<GetPetDetailsResponse>> getPetDetails() async {
    log.d("googleLogin called");
    GetPetDetailsResponse response;
    try {
      response = await getApiClient(true).getPetDetails();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Booking A Run
  Future<BaseResponse<SendDataResponse>> bookARun(
      BookARunBody bookARunBody) async {
    log.d("googleLogin called");
    SendDataResponse response;
    try {
      response = await getApiClient(true).bookARun(bookARunBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // My Bookings Flow

  // -- Get active appointments
  Future<BaseResponse<MyAppointmentsResponse>> getActiveAppointments() async {
    print("2");
    MyAppointmentsResponse response;
    try {
      response = await getApiClient(true).getActiveAppointments();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get booked appointments
  Future<BaseResponse<MyAppointmentsResponse>> getBookedAppointments() async {
    print("2");
    MyAppointmentsResponse response;
    try {
      response = await getApiClient(true).getBookedAppointments();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get past appointments
  Future<BaseResponse<MyAppointmentsResponse>> getPastAppointments() async {
    print("2");
    MyAppointmentsResponse response;
    try {
      response = await getApiClient(true).getPastAppointments();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Appointment Details
  Future<BaseResponse<GetAppointmentDetailsResponse>> getAppointmentDetails(
      GetAppointmentDetailsBody getAppointmentDetailsBody) async {
    print("2");
    GetAppointmentDetailsResponse response;
    try {
      response = await getApiClient(true)
          .getAppointmentDetails(getAppointmentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Change Appointment Status
  Future<BaseResponse<SendDataResponse>> changeAppointmentStatus(
      ChangeAppointmentStatusBody changeAppointmentStatusBody) async {
    print("2");
    SendDataResponse response;
    try {
      response = await getApiClient(true)
          .changeAppointmentStatus(changeAppointmentStatusBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Scroll Status
  Future<BaseResponse<GetScrollStatusResponse>> getScrollStatus(
      GetScrollStatusBody getScrollStatusBody) async {
    print("2");
    GetScrollStatusResponse response;
    try {
      response = await getApiClient(true).getScrollStatus(getScrollStatusBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Report Run One
  Future<BaseResponse<GetReportResponse>> getRunOneReport(
      GetReportOneBody getReportOneBody) async {
    print("2");
    GetReportResponse response;
    try {
      response = await getApiClient(true).getRunOneReport(getReportOneBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Report Run Two
  Future<BaseResponse<GetReportResponse>> getRunTwoReport(
      GetReportTwoBody getReportTwoBody) async {
    print("2");
    GetReportResponse response;
    try {
      response = await getApiClient(true).getRunTwoReport(getReportTwoBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Rating Run One
  Future<BaseResponse<SendDataResponse>> setRunOneRating(
      SetRunOneRatingBody setRunOneRatingBody) async {
    print("2");
    SendDataResponse response;
    try {
      response = await getApiClient(true).setRunOneRating(setRunOneRatingBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Rating Run Two
  Future<BaseResponse<SendDataResponse>> setRunTwoRating(
      SetRunTwoRatingBody setRunTwoRatingBody) async {
    print("2");
    SendDataResponse response;
    try {
      response = await getApiClient(true).setRunTwoRating(setRunTwoRatingBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Testimony
  Future<BaseResponse<SendDataResponse>> setTestimony(
      SetTestimonyBody setTestimonyBody) async {
    print("2");
    SendDataResponse response;
    try {
      response = await getApiClient(true).setTestimony(setTestimonyBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }
}
