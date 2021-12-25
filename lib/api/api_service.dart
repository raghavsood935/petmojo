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
import 'package:tamely/models/create_post_response.dart';
import 'package:tamely/models/edit_response.dart';
import 'package:tamely/models/generate_pet_username_response.dart';
import 'package:tamely/models/get_bookmarks_model.dart';
import 'package:tamely/models/get_payment_details_response.dart';
import 'package:tamely/models/list_of_comments_response.dart';
import 'package:tamely/models/list_of_feed_post_response.dart';
import 'package:tamely/models/list_of_followers_resopnse.dart';
import 'package:tamely/models/list_of_followings_resopnse.dart';
import 'package:tamely/models/list_of_for_you_post_response.dart';
import 'package:tamely/models/list_of_guardians.dart';
import 'package:tamely/models/list_of_pending_relation_requests.dart';
import 'package:tamely/models/list_of_pending_requests.dart';
import 'package:tamely/models/list_of_post_response.dart';
import 'package:tamely/models/list_of_profile_response.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/list_of_relations.dart';
import 'package:tamely/models/notification_response.dart';
import 'package:tamely/models/params/animal_profile_create_body.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/comment_new/add_comment_body.dart';
import 'package:tamely/models/params/comments/comment/delete_comment_body.dart';
import 'package:tamely/models/params/comments/comment/store_comment_body.dart';
import 'package:tamely/models/params/comments/comment/update_comment_body.dart';
import 'package:tamely/models/params/comments/comment/vote_comment_body.dart';
import 'package:tamely/models/params/comments/sub_comment/delete_sub_comment_body.dart';
import 'package:tamely/models/params/comments/sub_comment/store_sub_comment_body.dart';
import 'package:tamely/models/params/comments/sub_comment/update_sub_comment_body.dart';
import 'package:tamely/models/params/comments/sub_comment/vote_sub_comment_body.dart';
import 'package:tamely/models/params/confirm_relation_request_body.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/models/params/delete_post_body.dart';
import 'package:tamely/models/params/edit_animal_profile_body.dart';
import 'package:tamely/models/params/edit_animal_profile_details_body.dart';
import 'package:tamely/models/params/edit_animal_profile_main_details_body.dart';
import 'package:tamely/models/params/feedback_body.dart';
import 'package:tamely/models/params/fetch_list_of_following_body.dart';
import 'package:tamely/models/params/get_guardians_body.dart';
import 'package:tamely/models/params/get_payment_details_body.dart';
import 'package:tamely/models/params/get_post_by_id.dart';
import 'package:tamely/models/params/get_profile_details_by_id_body.dart';
import 'package:tamely/models/params/get_relation_requests_body.dart';
import 'package:tamely/models/params/guardians_and_relations/send_guardian_request_body.dart';
import 'package:tamely/models/params/guardians_and_relations/send_relation_request_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';
import 'package:tamely/models/params/login_body.dart';
import 'package:tamely/models/params/need_help_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/params/register_body.dart';
import 'package:tamely/models/params/reject_relation_request_body.dart';
import 'package:tamely/models/params/resend_mobile_otp_body.dart';
import 'package:tamely/models/params/reset_password_body.dart';
import 'package:tamely/models/params/search_profile_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/send_mobile_otp_body.dart';
import 'package:tamely/models/params/set_payment_details_body.dart';
import 'package:tamely/models/params/show_people_to_follow_body.dart';
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/params/change_bio_avatar_body.dart';
import 'package:tamely/models/params/verify_mobile_otp_body.dart';
import 'package:tamely/models/profile_details_by_id_response.dart';
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
      } else {
        dio.options.headers["authorization"] = animalToken;
      }
    }

    if (isHuman) {
      dio.options.headers["type"] = "User";
    } else {
      dio.options.headers["type"] = "Animal";
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
    String name,
    String username,
    String avatar,
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
      response = await getApiClient(true, true).animalProfileCreate(
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
      String name,
      String username,
      String avatar,
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
      bool servicePet,
      bool spayed,
      String animalId,
      String petToken) async {
    EditResponse response;
    try {
      response = await getApiClient(true, false, animalToken: petToken)
          .editAnimalProfile(
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
              servicePet,
              spayed,
              animalId);
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
      ).confirmRelationsRequest(confirmRelationRequestBody);
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
        true,
        false,
        animalToken: petToken,
      ).rejectRelationRequest(rejectRelationRequestBody);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      return BaseResponse()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return BaseResponse()..data = response;
  }

  Future<BaseResponse<CreatePostResponse>> createPost(File file, String caption,
      String type, String id, bool isHuman, String petToken) async {
    CreatePostResponse response;
    try {
      response = await getApiClient(true, isHuman, animalToken: petToken)
          .createPost(type, file, caption, "", isHuman ? id : "",
              isHuman ? "" : id, type);
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

  // Booking Appointments

  // -- Get Pet Details
  Future<BaseResponse<GetPetDetailsResponse>> getPetDetails() async {
    log.d("googleLogin called");
    GetPetDetailsResponse response;
    try {
      response = await getApiClient(true, false).getPetDetails();
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

  // My Bookings Flow

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
}
