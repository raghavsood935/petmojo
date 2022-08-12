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
import 'package:tamely/models/avatar_link_response.dart';
import 'package:tamely/models/book_a_run_response.dart';
import 'package:tamely/models/bookmark_response.dart';
import 'package:tamely/models/comment_added_response.dart';
import 'package:tamely/models/coupon_response.dart';
import 'package:tamely/models/create_post_response.dart';
import 'package:tamely/models/delete_user_account_response.dart';
import 'package:tamely/models/e-commerce/fav_product_list_response.dart';
import 'package:tamely/models/e-commerce/product_details_by_id_response.dart';
import 'package:tamely/models/e-commerce/product_id_common_body.dart';
import 'package:tamely/models/e-commerce/product_list_response.dart';
import 'package:tamely/models/edit_response.dart';
import 'package:tamely/models/generate_pet_username_response.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/models/get_blogs_details_model.dart';
import 'package:tamely/models/get_blogs_like_details_model.dart';
import 'package:tamely/models/get_blogs_model.dart';
import 'package:tamely/models/get_bookmarks_model.dart';
import 'package:tamely/models/get_file_upload_details_response.dart';
import 'package:tamely/models/get_free_training_response.dart';
import 'package:tamely/models/get_free_walk_response.dart';
import 'package:tamely/models/get_grooming_appointment_details_response.dart';
import 'package:tamely/models/get_payment_details_response.dart';
import 'package:tamely/models/get_training_appointment_details_response.dart';
import 'package:tamely/models/get_training_report_response.dart';
import 'package:tamely/models/get_training_scroll_status_response.dart';
import 'package:tamely/models/group_response/get_all_group_members_response.dart';
import 'package:tamely/models/group_response/get_all_groups_response.dart';
import 'package:tamely/models/group_response/get_group_info_response.dart';
import 'package:tamely/models/group_response/get_joined_groups_response.dart';
import 'package:tamely/models/group_response/group_create_response.dart';
import 'package:tamely/models/group_response/pending_groups_invitations_response.dart';
import 'package:tamely/models/has_appointments_response.dart';
import 'package:tamely/models/like_blog_response.dart';
import 'package:tamely/models/list_of_comments_response.dart';
import 'package:tamely/models/list_of_feed_post_response.dart';
import 'package:tamely/models/list_of_followers_resopnse.dart';
import 'package:tamely/models/list_of_followings_resopnse.dart';
import 'package:tamely/models/list_of_guardians.dart';
import 'package:tamely/models/list_of_pending_relation_requests.dart';
import 'package:tamely/models/list_of_pending_requests.dart';
import 'package:tamely/models/list_of_profile_response.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/list_of_relations.dart';
import 'package:tamely/models/notification_response.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/apple_signin_body.dart';
import 'package:tamely/models/params/book_a_grooming_body.dart';
import 'package:tamely/models/params/book_a_training_body.dart';
import 'package:tamely/models/params/comment_new/add_comment_body.dart';
import 'package:tamely/models/params/confirm_relation_request_body.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/models/params/coupon_body.dart';
import 'package:tamely/models/params/create_animal_profile_body.dart';
import 'package:tamely/models/params/create_animal_profile_new_body.dart';
import 'package:tamely/models/params/create_post_body.dart';
import 'package:tamely/models/params/delete_post_body.dart';
import 'package:tamely/models/params/edit_animal_breed_age_body.dart';
import 'package:tamely/models/params/edit_animal_profile_body.dart';
import 'package:tamely/models/params/edit_animal_profile_details_body.dart';
import 'package:tamely/models/params/edit_animal_profile_main_details_body.dart';
import 'package:tamely/models/params/edit_animal_type_body.dart';
import 'package:tamely/models/params/feedback_body.dart';
import 'package:tamely/models/params/fetch_list_of_following_body.dart';
import 'package:tamely/models/params/get_file_upload_details_body.dart';
import 'package:tamely/models/params/get_s3_url_body.dart';
import 'package:tamely/models/params/get_training_scroll_status_body.dart';
import 'package:tamely/models/params/get_animal_by_location_body.dart';
import 'package:tamely/models/params/get_guardians_body.dart';
import 'package:tamely/models/params/get_payment_details_body.dart';
import 'package:tamely/models/params/get_post_by_id.dart';
import 'package:tamely/models/params/get_profile_details_by_id_body.dart';
import 'package:tamely/models/params/get_relation_requests_body.dart';
import 'package:tamely/models/params/get_training_report_body.dart';
import 'package:tamely/models/params/groups/edit_group_cover_body.dart';
import 'package:tamely/models/params/groups/edit_group_details_body.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/models/params/groups/group_basic_with_counter_body.dart';
import 'package:tamely/models/params/groups/make_admin_group_body.dart';
import 'package:tamely/models/params/guardians_and_relations/send_guardian_request_body.dart';
import 'package:tamely/models/params/guardians_and_relations/send_relation_request_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';
import 'package:tamely/models/params/liked_blog_body.dart';
import 'package:tamely/models/params/login_body.dart';
import 'package:tamely/models/params/need_help_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/params/register_body.dart';
import 'package:tamely/models/params/reject_relation_request_body.dart';
import 'package:tamely/models/params/reorder_a_run_body.dart';
import 'package:tamely/models/params/resend_mobile_otp_body.dart';
import 'package:tamely/models/params/reset_password_body.dart';
import 'package:tamely/models/params/search_profile_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/send_mobile_otp_body.dart';
import 'package:tamely/models/params/set_payment_details_body.dart';
import 'package:tamely/models/params/show_people_to_follow_body.dart';
import 'package:tamely/models/params/groups/change_group_description_body.dart';
import 'package:tamely/models/params/groups/create_group_body.dart';
import 'package:tamely/models/params/groups/update_group_hashtags_body.dart';
import 'package:tamely/models/params/groups/invite_people_group_body.dart';
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/params/change_bio_avatar_body.dart';
import 'package:tamely/models/params/update_token_body.dart';
import 'package:tamely/models/params/upload_file_body.dart';
import 'package:tamely/models/params/verify_mobile_otp_body.dart';
import 'package:tamely/models/profile_details_by_id_response.dart';
import 'package:tamely/models/reorder_a_run_response.dart';
import 'package:tamely/models/session_tracker_response.dart';
import 'package:tamely/models/url_response.dart';
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
import '../models/get_running_time_response.dart';
import '../models/params/apple_signin_body.dart';
import '../models/params/get_running_time_body.dart';
import '../models/params/gps_tracking_wait_list_body.dart';
import '../models/params/set_training_rating_body.dart';
import '../models/params/submit_ticket_body.dart';
import '../models/params/upgrade_dog_training_body.dart';
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

  dynamic getApiClient(bool isAuth, bool isHuman, {String animalToken = ""}) {
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
      if (isHuman) {
        dio.options.headers["authorization"] =
            "${_sharedPreferenceServices.authToken}";
        dio.options.headers["type"] = "User";
      } else {
        dio.options.headers["authorization"] = animalToken;
        dio.options.headers["type"] = "Animal";
      }
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

  Future<BaseResponse<CommonResponse>> uploadImage(
      UploadFileBody uploadFileBody) async {
    CommonResponse response;
    try {
      response = await getApiClient(true, true).updateImage(uploadFileBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<EditResponse>> updateFCMToken(
      UpdateTokenBody updateTokenBody) async {
    EditResponse response;
    try {
      response = await getApiClient(true, true).updateFCMToken(updateTokenBody);
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
      response = await getApiClient(true, true).updateProfile(createBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<EditResponse>> sendMobileOTP(
      SendMobileOTPBody sendMobileOTPBody) async {
    EditResponse response;
    try {
      response =
          await getApiClient(false, true).sendMobileOTP(sendMobileOTPBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<EditResponse>> resendMobileOTP(
      ResendMobileOTPBody resendMobileOTPBody) async {
    EditResponse response;
    try {
      response =
          await getApiClient(false, true).resendMobileOTP(resendMobileOTPBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserResponse>> verifyMobileOTP(
      VerifyMobileOTPBody verifyMobileOTPBody) async {
    UserResponse response;
    try {
      response =
          await getApiClient(false, true).verifyMobileOTP(verifyMobileOTPBody);
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
      response = await getApiClient(false, true).register(registerBody);
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
      response = await getApiClient(true, true).verifyAccount(num);
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
        response =
            await getApiClient(true, true).confirmAccount(confirmOTPBody);
      else
        response =
            await getApiClient(true, true).verifyResetPassword(confirmOTPBody);
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
      response =
          await getApiClient(true, true).updatePassword(updatePasswordBody);
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
      response = await getApiClient(false, true).login(loginBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserResponse>> appleLogin(
      AppleSigninBody appleBody) async {
    log.d("loginAccount called");
    UserResponse response;
    try {
      response = await getApiClient(false, true).appleLogin(appleBody);
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
      response =
          await getApiClient(false, true).resetPassword(resetPasswordBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<UserNameAvailableResponse>> checkUserName(
      bool isHuman, String userName) async {
    log.d("checkUserName called");
    UserNameAvailableResponse response;
    try {
      response = await getApiClient(true, isHuman).checkUserName(userName);
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
      response = await getApiClient(true, true).getUserProfileDetails();
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
      response = await getApiClient(false, true).facebookLogin(socialLoginBody);
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
      response = await getApiClient(false, true).googleLogin(socialLoginBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfFeedPostResponse>> getUserPosts(bool isHuman,
      {String petToken = ""}) async {
    ListOfFeedPostResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getUserPosts();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfFeedPostResponse>> getUserPostsById(
      GetPostByIdBody getPostByIdBody, bool isHuman,
      {String petToken = ""}) async {
    ListOfFeedPostResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getUserPostsById(getPostByIdBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfFeedPostResponse>> getFeedPosts(
      CounterBody counterBody, bool isHuman,
      {String animalToken = ""}) async {
    ListOfFeedPostResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .getFeedPosts(counterBody);
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
      response = await getApiClient(true, true)
          .changeBioAndAvatar(changeBioAvatarBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ProfileDetailsByIdResponse>> getProfileDetailsById(
      GetProfileDetailsByIdBody getProfileDetailsByIdBody, bool isHuman,
      {String animalToken = ""}) async {
    ProfileDetailsByIdResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .getProfileDetailsById(getProfileDetailsByIdBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<GeneratePetUsernameResponse>>
      generatePetUsername() async {
    GeneratePetUsernameResponse response;
    try {
      response = await getApiClient(false, false).generatePetUsername();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<AnimalProfileCreateResopnse>> createAnimalProfile(
      CreateAnimalProfileBody body) async {
    log.d("create animal profile called");
    AnimalProfileCreateResopnse response;
    try {
      response = await getApiClient(true, true).animalProfileCreate(body);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<AnimalProfileDetailModelResponse>> getAnimalProfileDetail(
      AnimalProfileDetailsBody animalProfileDetailsBody,
      {String animalToken = ""}) async {
    AnimalProfileDetailModelResponse response;
    try {
      response = await getApiClient(true, false, animalToken: animalToken)
          .getAnimalProfileDetail(animalProfileDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<AvatarLinkResponse>> imageToLink(File image) async {
    AvatarLinkResponse response;
    try {
      response = await getApiClient(true, true).imageToLink(image);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfNotificationResponse>> getListOfNotification(
      bool isHuman,
      {String petToken = ""}) async {
    ListOfNotificationResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getListOfNotification();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<EditResponse>> marAsReadListOfNotification(bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .markAsReadNotification();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<AnimalProfileDetailModelResponse>>
      editAnimalProfileDetails(
          EditAnimalProfileDetailsBody editAnimalProfileDetailsBody,
          String animalToken) async {
    AnimalProfileDetailModelResponse response;
    try {
      response = await getApiClient(true, false, animalToken: animalToken)
          .editAnimalProfileDetails(editAnimalProfileDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<EditResponse>> editAnimalProfile(
      EditAnimalProfileBody editAnimalProfileBody, String petToken) async {
    EditResponse response;
    try {
      response = await getApiClient(true, false, animalToken: petToken)
          .editAnimalProfile(editAnimalProfileBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<EditResponse>> editAnimalProfileMainDetails(
      EditAnimalProfileMainDetailsBody editAnimalProfileMainDetailsBody) async {
    EditResponse response;
    try {
      response = await getApiClient(true, true)
          .editAnimalProfileMainDetails(editAnimalProfileMainDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfGuardiansResponse>> getGuardians(
      GetGuardianBody getGuardianBody, String petToken) async {
    ListOfGuardiansResponse response;
    try {
      response = await getApiClient(true, false, animalToken: petToken)
          .getGuardians(getGuardianBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfPendingRequestsResponse>>
      getPendingGuardianRequest() async {
    ListOfPendingRequestsResponse response;
    try {
      response = await getApiClient(true, true).getPendingGuardianRequest();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> sendGuardianRequest(
      SendGuardianRequestBody sendGuardianRequestBody, String petToken) async {
    CommonResponse response;
    try {
      response = await getApiClient(
        true,
        false,
        animalToken: petToken,
      ).sendGuardianRequest(sendGuardianRequestBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> confirmGuardianRequest(
      GetGuardianBody getGuardianBody) async {
    CommonResponse response;
    try {
      response = await getApiClient(true, true)
          .confirmGuardianRequest(getGuardianBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> rejectGuardianRequest(
      GetGuardianBody getGuardianBody) async {
    CommonResponse response;
    try {
      response =
          await getApiClient(true, true).rejectGuardianRequest(getGuardianBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfRelationsResponse>> getRelations(
      GetGuardianBody getGuardianBody, String petToken) async {
    ListOfRelationsResponse response;
    try {
      response = await getApiClient(
        true,
        false,
        animalToken: petToken,
      ).getRelations(getGuardianBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfRelationsRequestResponse>> getRelationsRequests(
      GetRelationRequestsBody getRelationRequestsBody, String petToken) async {
    ListOfRelationsRequestResponse response;
    try {
      response = await getApiClient(
        true,
        false,
        animalToken: petToken,
      ).getPendingRelationRequest(getRelationRequestsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> sendRelationsRequest(
      SendRelationRequestBody sendRelationRequestBody, String petToken) async {
    CommonResponse response;
    try {
      response = await getApiClient(
        true,
        false,
        animalToken: petToken,
      ).sendRelationRequest(sendRelationRequestBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> confirmRelationsRequest(
      ConfirmRelationRequestBody confirmRelationRequestBody,
      String petToken) async {
    CommonResponse response;
    try {
      response = await getApiClient(
        true,
        false,
        animalToken: petToken,
      ).confirmRelationRequest(confirmRelationRequestBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> rejectRelationRequest(
      RejectRelationRequestBody rejectRelationRequestBody,
      String petToken) async {
    CommonResponse response;
    try {
      response = await getApiClient(
        false,
        true,
      ).rejectRelationRequest(rejectRelationRequestBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CreatePostResponse>> createPost(
    CreatePostBody createPostBody,
    bool isHuman,
    String petToken,
  ) async {
    CreatePostResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .createPost(createPostBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<EditResponse>> deletePost(
      DeletePostBody deletePostBody, bool isHuman, String petToken) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .deletePost(deletePostBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfCommentsResponse>> fetchComment(
      String postID, int counter) async {
    ListOfCommentsResponse response;
    try {
      response = await getApiClient(true, true).fetchComments(
        postID,
        counter,
      );
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommentAddedResponse>> addComment(
      AddCommentBody body, bool isHuman, String postID,
      {String animalToken = ""}) async {
    log.d("checkUserName called");
    CommentAddedResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .addComment(postID, body);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<EditResponse>> likeOrDislikeThePost(
      LikeDislikePostBody likeDislikePostBody, bool isHuman,
      {String animalToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .likeDislikePost(likeDislikePostBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<BookmarkResponse>> bookmarkActionPost(
      String postId, bool isHuman,
      {String animalToken = ""}) async {
    BookmarkResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .bookmarkPost(postId);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfFollowersResponse>> getListOfFollowers(
      FetchListOfFollowingBody fetchListOfFollowingBody, bool isHuman,
      {String animalToken = ""}) async {
    ListOfFollowersResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .getListOfFollowers(fetchListOfFollowingBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfFollowingsResponse>> getListOfFollowings(
      FetchListOfFollowingBody fetchListOfFollowingBody, bool isHuman,
      {String animalToken = ""}) async {
    ListOfFollowingsResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .getListOfFollowings(fetchListOfFollowingBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfFeedPostResponse>> getForYouPost(
      CounterBody counterBody, bool isHuman,
      {String animalToken = ""}) async {
    ListOfFeedPostResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .listOfForYouPost(counterBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfProfilesResponse>> showPeoplesToFollow(
      ShowPeopleToFollowBody showPeopleToFollowBody) async {
    ListOfProfilesResponse response;
    try {
      response = await getApiClient(true, true)
          .showPeoplesToFollow(showPeopleToFollowBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<ListOfProfilesForYouResponse>> showListOfProfileForYou(
      SearchProfilesBody searchProfilesBody, bool isHuman,
      {String petToken = ""}) async {
    ListOfProfilesForYouResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .searchProfiles(searchProfilesBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CommonResponse>> sendFollowRequest(
      SendFollowRequestBody sendFollowRequestBody, bool isHuman,
      {String animalToken = ""}) async {
    CommonResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .sendFollowRequest(sendFollowRequestBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //send feedback
  Future<BaseResponse<CommonResponse>> sendFeedback(
      SubmitFeedbackBody submitFeedbackBody) async {
    CommonResponse response;
    try {
      response =
          await getApiClient(true, true).submitFeedback(submitFeedbackBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // Bookmarks

  Future<BaseResponse<getBookmarks>> getBookmarksDetails(bool isHuman,
      {String animalToken = ""}) async {
    log.d("googleLogin called");
    getBookmarks response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .getBookmarksDetails();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //get help
  Future<BaseResponse<CommonResponse>> getHelp(
      NeedHelpBody needHelpBody) async {
    CommonResponse response;
    try {
      response = await getApiClient(true, true).getHelp(needHelpBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //Community

  //---> get group details
  Future<BaseResponse<GetGroupInfoResponse>> getGroupDetails(
      GroupBasicBody groupBasicBody, bool isHuman,
      {String animalToken = ""}) async {
    GetGroupInfoResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .getGroupDetails(groupBasicBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //---> Get group posts
  Future<BaseResponse<ListOfFeedPostResponse>> getGroupPosts(
      GroupBasicWithCounterBody groupBasicWithCounterBody, bool isHuman,
      {String animalToken = ""}) async {
    ListOfFeedPostResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .getGroupPosts(groupBasicWithCounterBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //---> create group
  Future<BaseResponse<GroupCreateResponse>> createGroup(
      CreateGroupBody createGroupBody, bool isHuman,
      {String animalToken = ""}) async {
    GroupCreateResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .createGroup(createGroupBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->  Change description group
  Future<BaseResponse<EditResponse>> changeDescription(
      ChangeGroupDescriptionBody changeGroupDescriptionBody, bool isHuman,
      {String animalToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .changeDescription(changeGroupDescriptionBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->   Update hashtags group
  Future<BaseResponse<EditResponse>> updateHashtags(
      UpdateGroupHashtagsBody updateGroupHashtagsBody, bool isHuman,
      {String animalToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .updateHashtags(updateGroupHashtagsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->  Edit group details
  Future<BaseResponse<EditResponse>> editGroupDetails(
      EditGroupDetailsBody editGroupDetailsBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .editGroupDetails(editGroupDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->  Edit group cover photo
  Future<BaseResponse<EditResponse>> editCoverPhoto(
      EditGroupCoverBody editGroupCoverBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .editCoverPhoto(editGroupCoverBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->  Invite peoples Group
  Future<BaseResponse<EditResponse>> invitePeople(
      InvitePeopleGroupBody invitePeopleGroupBody, bool isHuman,
      {String animalToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: animalToken)
          .invitePeople(invitePeopleGroupBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->  Invite peoples Group
  Future<BaseResponse<GetAllGroupMembersResponse>> getMembers(
      GroupBasicWithCounterBody groupBasicWithCounterBody) async {
    GetAllGroupMembersResponse response;
    try {
      response =
          await getApiClient(true, true).getMembers(groupBasicWithCounterBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->  Show pending invitations
  Future<BaseResponse<PendingGroupInvitationResponse>> showPendingInvitations(
      bool isHuman,
      {String petToken = ""}) async {
    PendingGroupInvitationResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .showPendingInvitations();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get Joined Groups
  Future<BaseResponse<GetJoinedGroupResponse>> getJoinedGroups(bool isHuman,
      {String petToken = ""}) async {
    GetJoinedGroupResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getJoinedGroups();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Join group
  Future<BaseResponse<EditResponse>> joinGroup(
      GroupBasicBody groupBasicBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .joinGroup(groupBasicBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Leave group
  Future<BaseResponse<EditResponse>> leaveGroup(
      GroupBasicBody groupBasicBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .leaveGroup(groupBasicBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Make admin
  Future<BaseResponse<EditResponse>> makeAdmin(
      MakeGroupAdminBody makeGroupAdminBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .makeAdmin(makeGroupAdminBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Remove admin
  Future<BaseResponse<EditResponse>> removeAdmin(
      MakeGroupAdminBody makeGroupAdminBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .removeAdmin(makeGroupAdminBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Remove member from group
  Future<BaseResponse<EditResponse>> removeMember(
      MakeGroupAdminBody makeGroupAdminBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .removeMember(makeGroupAdminBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get All Groups
  Future<BaseResponse<GetAllGroupResponse>> getAllGroups(
      CounterBody counterBody, bool isHuman,
      {String petToken = ""}) async {
    GetAllGroupResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getAllGroups(counterBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Delete Groups
  Future<BaseResponse<EditResponse>> deleteGroup(
      GroupBasicBody groupBasicBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .deleteGroup(groupBasicBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Decline Groups Invitation
  Future<BaseResponse<EditResponse>> declineInvitation(
      GroupBasicBody groupBasicBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .declineInvitation(groupBasicBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get Stray Animas
  Future<BaseResponse<GetAnimalsByLocationResponse>> getStrays(
      GetAnimalByLocationBody getAnimalByLocationBody) async {
    GetAnimalsByLocationResponse response;
    try {
      response =
          await getApiClient(true, true).getStrays(getAnimalByLocationBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get Play Buddies Animas
  Future<BaseResponse<GetAnimalsByLocationResponse>> getPlayBuddies(
      GetAnimalByLocationBody getAnimalByLocationBody) async {
    GetAnimalsByLocationResponse response;
    try {
      response = await getApiClient(true, true)
          .getPlayBuddies(getAnimalByLocationBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get Adoption Animas
  Future<BaseResponse<GetAnimalsByLocationResponse>> getAdoption(
      GetAnimalByLocationBody getAnimalByLocationBody) async {
    GetAnimalsByLocationResponse response;
    try {
      response =
          await getApiClient(true, true).getAdoption(getAnimalByLocationBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get Mating Animas
  Future<BaseResponse<GetAnimalsByLocationResponse>> getMating(
      GetAnimalByLocationBody getAnimalByLocationBody) async {
    GetAnimalsByLocationResponse response;
    try {
      response =
          await getApiClient(true, true).getMating(getAnimalByLocationBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // Get Blogs
  Future<BaseResponse<getBlogs>> getListOfBlogs(CounterBody counterBody) async {
    log.d("googleLogin called");
    getBlogs response;
    try {
      response = await getApiClient(true, true).GetBlogs(counterBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->   Liked Blog
  Future<BaseResponse<LikedBlogResponse>> likedBlog(
      LikedBlogBody likedBlogBody, bool isHuman,
      {String petToken = ""}) async {
    LikedBlogResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .likedBlog(likedBlogBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->  Get Blog Details
  Future<BaseResponse<GetBlogDetailsResponse>> getBlogDetails(
      LikedBlogBody likedBlogBody) async {
    GetBlogDetailsResponse response;
    try {
      response = await getApiClient(true, true).getBlogDetails(likedBlogBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //--->  Get Blog Like Details
  Future<BaseResponse<GetBlogLikeDetailsResponse>> getBlogLikesDetails(
      LikedBlogBody likedBlogBody, bool isHuman,
      {String petToken = ""}) async {
    GetBlogLikeDetailsResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getBlogLikesDetails(likedBlogBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //create animal profile new
  Future<BaseResponse<AnimalProfileCreateResopnse>> animalProfileCreateNew(
      CreateAnimalProfileNewBody createAnimalProfileNewBody) async {
    AnimalProfileCreateResopnse response;
    try {
      response = await getApiClient(true, true)
          .animalProfileCreateNew(createAnimalProfileNewBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //Edit animal Type
  Future<BaseResponse<EditResponse>> editAnimalType(
      EditAnimalTypeBody editAnimalTypeBody) async {
    EditResponse response;
    try {
      response =
          await getApiClient(true, true).editAnimalType(editAnimalTypeBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //Edit animal Breed and age
  Future<BaseResponse<EditResponse>> editAnimalBreedAndAge(
      EditAnimalBreedAgeBody editAnimalBreedAgeBody) async {
    EditResponse response;
    try {
      response = await getApiClient(true, true)
          .editAnimalBreedAndAge(editAnimalBreedAgeBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  //E Commerce
  // ---> Get List Of Products
  Future<BaseResponse<ProductListResponse>> getProducts(
      CounterBody counterBody, bool isHuman,
      {String petToken = ""}) async {
    ProductListResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getProducts(counterBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get Product Details
  Future<BaseResponse<ProductDetailsByIdResponse>> getProductDetails(
      ProductIdCommonBody productIdCommonBody, bool isHuman,
      {String petToken = ""}) async {
    ProductDetailsByIdResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getProductDetails(productIdCommonBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Add To Cart
  Future<BaseResponse<EditResponse>> addToCart(
      ProductIdCommonBody productIdCommonBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .addToCart(productIdCommonBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get List Of Cart
  Future<BaseResponse<FavInnerProductListResponse>> getCartDetails(bool isHuman,
      {String petToken = ""}) async {
    FavInnerProductListResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getCartDetails();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Add To Favourites
  Future<BaseResponse<EditResponse>> addToFavourites(
      ProductIdCommonBody productIdCommonBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .addToFavourites(productIdCommonBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Delete From Favourites
  Future<BaseResponse<EditResponse>> deleteFromFavourites(
      ProductIdCommonBody productIdCommonBody, bool isHuman,
      {String petToken = ""}) async {
    EditResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .deleteFromFavourites(productIdCommonBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // ---> Get List Of Favourite Products
  Future<BaseResponse<FavProductListResponse>> getFavouriteDetails(bool isHuman,
      {String petToken = ""}) async {
    FavProductListResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .getFavouriteDetails();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // Booking Appointments -- Dog running

  // -- Get Free Walk
  Future<BaseResponse<GetFreeWalkResponse>> getFreeWalk() async {
    log.d("googleLogin called");
    GetFreeWalkResponse response;
    try {
      response = await getApiClient(true, true).getFreeWalk();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Free Walk
  Future<BaseResponse<SendDataResponse>> setFreeWalk() async {
    log.d("googleLogin called");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true).setFreeWalk();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Pet Details
  Future<BaseResponse<GetPetDetailsResponse>> getPetDetails() async {
    log.d("googleLogin called");
    GetPetDetailsResponse response;
    try {
      response = await getApiClient(true, true).getPetDetails();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Booking A Run
  Future<BaseResponse<BookARunResponse>> bookARun(
      BookARunBody bookARunBody) async {
    log.d("googleLogin called");
    BookARunResponse response;
    try {
      response = await getApiClient(true, true).bookARun(bookARunBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Payment details
  Future<BaseResponse<GetPaymentDetailsResponse>> getPaymentDetails(
      GetPaymentDetailsBody getPaymentDetailsBody) async {
    log.d("googleLogin called");
    GetPaymentDetailsResponse response;
    try {
      response = await getApiClient(true, true)
          .getPaymentDetails(getPaymentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Payment details
  Future<BaseResponse<SendDataResponse>> setPaymentDetails(
      SetPaymentDetailsBody setPaymentDetailsBody) async {
    log.d("googleLogin called");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true)
          .setPaymentDetails(setPaymentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // Booking Appointments -- Dog training

  // -- Get Free Training
  Future<BaseResponse<GetFreeTrainingResponse>> getFreeTraining() async {
    log.d("googleLogin called");
    GetFreeTrainingResponse response;
    try {
      response = await getApiClient(true, true).getFreeTraining();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Delete User Account

  Future<BaseResponse<DeleteAccountResponse>> deleteUserAccount() async {
    log.d("googleLogin called");
    DeleteAccountResponse response;
    try {
      response = await getApiClient(true, true).deleteUserAccount();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Free Training
  Future<BaseResponse<SendDataResponse>> setFreeTraining() async {
    log.d("googleLogin called");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true).setFreeTraining();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Booking A Training
  Future<BaseResponse<BookARunResponse>> bookATraining(
      BookATrainingBody bookATrainingBody) async {
    log.d("googleLogin called");
    BookARunResponse response;
    try {
      response =
          await getApiClient(true, true).bookATraining(bookATrainingBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<GetRunningTimeResponse>> getRunningTimeElapsed(
      GetRunningTimeBody getRunningTimeBody) async {
    log.d("googleLogin called");
    GetRunningTimeResponse response;
    try {
      response =
      await getApiClient(true, true).getRunningTimeElapsed(getRunningTimeBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Payment details Training
  Future<BaseResponse<SendDataResponse>> setPaymentDetailsTraining(
      SetPaymentDetailsBody setPaymentDetailsBody) async {
    log.d("googleLogin called");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true)
          .setPaymentDetailsTraining(setPaymentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Upgrade Payment details Training
  Future<BaseResponse<SendDataResponse>> setUpgradePaymentDetailsTraining(
      SetPaymentDetailsBody setPaymentDetailsBody) async {
    SendDataResponse response;
    try {
      response = await getApiClient(true, true)
          .setUpgradePaymentDetailsTraining(setPaymentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Upgrade Dog Training
  Future<BaseResponse<BookARunResponse>> upgradeDogTraining(
      UpgradeDogTrainingBody upgradeDogTrainingBody) async {
    BookARunResponse response;
    try {
      response = await getApiClient(true, true)
          .upgradeDogTraining(upgradeDogTrainingBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // 3 - Grooming flow

  // -- Booking A Grooming
  Future<BaseResponse<BookARunResponse>> bookAGrooming(
      BookAGroomingBody bookAGroomingBody) async {
    log.d("googleLogin called");
    BookARunResponse response;
    try {
      response =
          await getApiClient(true, true).bookAGrooming(bookAGroomingBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Payment details Grooming
  Future<BaseResponse<SendDataResponse>> setPaymentDetailsGrooming(
      SetPaymentDetailsBody setPaymentDetailsBody) async {
    log.d("googleLogin called");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true)
          .setPaymentDetailsGrooming(setPaymentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Pay later
  Future<BaseResponse<SendDataResponse>> payLaterGrooming(
      GetPaymentDetailsBody getPaymentDetailsBody) async {
    log.d("googleLogin called");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true)
          .payLaterGrooming(getPaymentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // Booking GPS Tracker -- GPS Tracker
  Future<BaseResponse<SendDataResponse>> gpsTrackingWaitList(
      GpsTrackingWaitListBody gpsTrackingWaitListBody) async {
    log.d("googleLogin called");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true)
          .gpsTrackingWaitList(gpsTrackingWaitListBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // My Bookings Flow

  // -- Get active appointments
  Future<BaseResponse<HasAppointmentsResponse>> hasAppointments() async {
    print("2");
    HasAppointmentsResponse response;
    try {
      response = await getApiClient(true, true).hasAppointments();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get active appointments
  Future<BaseResponse<MyAppointmentsResponse>> getActiveAppointments() async {
    print("2");
    MyAppointmentsResponse response;
    try {
      response = await getApiClient(true, true).getActiveAppointments();
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
      response = await getApiClient(true, true).getBookedAppointments();
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
      response = await getApiClient(true, true).getPastAppointments();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Dog running

  // -- Reorder A Run
  Future<BaseResponse<ReorderARunResponse>> reorderARun(
      ReorderARunBody reorderARunBody) async {
    print("2 ${reorderARunBody.bookingId}");
    ReorderARunResponse response;
    try {
      response = await getApiClient(true, true).reorderARun(reorderARunBody);
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
      response = await getApiClient(true, true)
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
      response = await getApiClient(true, true)
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
      response =
          await getApiClient(true, true).getScrollStatus(getScrollStatusBody);
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
      response =
          await getApiClient(true, true).getRunOneReport(getReportOneBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Submit ticket
  Future<BaseResponse<SendDataResponse>> submitTicket(
      SubmitTicketBody submitTicketBody) async {
    print("2");
    SendDataResponse response;
    try {
      response =
      await getApiClient(true, true).submitTicket(submitTicketBody);
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
      response =
          await getApiClient(true, true).getRunTwoReport(getReportTwoBody);
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
      response =
          await getApiClient(true, true).setRunOneRating(setRunOneRatingBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<SendDataResponse>> setTrainingRating(
      SetTrainingRatingBody setTrainingRatingBody) async {
    print("2");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true)
          .setTrainingRating(setTrainingRatingBody);
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
      response =
          await getApiClient(true, true).setRunTwoRating(setRunTwoRatingBody);
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
      response = await getApiClient(true, true).setTestimony(setTestimonyBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Dog training

  // -- Reorder A Training
  Future<BaseResponse<ReorderARunResponse>> reorderATraining(
      ReorderARunBody reorderARunBody) async {
    ReorderARunResponse response;
    try {
      response =
          await getApiClient(true, true).reorderATraining(reorderARunBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Appointment Details Training
  Future<BaseResponse<GetTrainingAppointmentDetailsResponse>>
      getTrainingAppointmentDetails(
          GetAppointmentDetailsBody getAppointmentDetailsBody) async {
    print("2");
    GetTrainingAppointmentDetailsResponse response;
    try {
      response = await getApiClient(true, true)
          .getTrainingAppointmentDetails(getAppointmentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Change Appointment Status Training
  Future<BaseResponse<SendDataResponse>> changeTrainingAppointmentStatus(
      ChangeAppointmentStatusBody changeAppointmentStatusBody) async {
    print("2");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true)
          .changeTrainingAppointmentStatus(changeAppointmentStatusBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Scroll Status Training
  Future<BaseResponse<GetTrainingScrollStatusResponse>> getTrainingScrollStatus(
      GetTrainingScrollStatusBody getTrainingScrollStatusBody) async {
    print("2");
    GetTrainingScrollStatusResponse response;
    try {
      response = await getApiClient(true, true)
          .getTrainingScrollStatus(getTrainingScrollStatusBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Report Training
  Future<BaseResponse<GetTrainingReportResponse>> getTrainingReport(
      GetTrainingReportBody getTrainingReportBody) async {
    print("2");
    GetTrainingReportResponse response;
    try {
      response = await getApiClient(true, true)
          .getTrainingReport(getTrainingReportBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Coupon Amount
  Future<BaseResponse<CouponResponse>> getCouponAmount(
      CouponBody couponBody) async {
    print("2");
    CouponResponse response;
    try {
      response = await getApiClient(true, true).getCouponAmount(couponBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Set Used Coupon
  Future<BaseResponse<SendDataResponse>> setUsedCoupon(
      CouponBody couponBody) async {
    print("2");
    SendDataResponse response;
    try {
      response = await getApiClient(true, true).setUsedCoupon(couponBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Appointment Details Grooming
  Future<BaseResponse<GetGroomingAppointmentDetailsResponse>>
      getGroomingAppointmentDetails(
          GetAppointmentDetailsBody getAppointmentDetailsBody) async {
    print("2");
    GetGroomingAppointmentDetailsResponse response;
    try {
      response = await getApiClient(true, true)
          .getGroomingAppointmentDetails(getAppointmentDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

// -- Get S3 Url
  Future<BaseResponse<UrlResponse>> getS3Url(GetS3UrlBody getS3UrlBody) async {
    UrlResponse response;
    try {
      response = await getApiClient(true, true).getS3Url(getS3UrlBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get S3 Video Url

  Future<BaseResponse<UrlResponse>> getS3VideoUrl(
      GetS3UrlBody getS3UrlBody) async {
    UrlResponse response;
    try {
      response = await getApiClient(true, true).getS3VideoUrl(getS3UrlBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }
// -- Get session tracker response

  Future<BaseResponse<SessionTrackerResponse>> sessionTracker() async {
    SessionTrackerResponse response;
    try {
      response = await getApiClient(true, true).sessionTracker();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  // -- Get Video File details training
  Future<BaseResponse<GetFileUploadDetailsResponse>> getFileUploadDetails(
      GetFileUploadDetailsBody getFileUploadDetailsBody) async {
    GetFileUploadDetailsResponse response;
    try {
      response = await getApiClient(true, true)
          .getFileUploadDetails(getFileUploadDetailsBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }
}
