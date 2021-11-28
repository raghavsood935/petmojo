import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:tamely/models/animal_profile_create_resopnse.dart';
import 'package:tamely/models/animal_profile_detail_model.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/edit_response.dart';
import 'package:tamely/models/get_payment_details_response.dart';
import 'package:tamely/models/list_of_post_response.dart';
import 'package:tamely/models/list_of_profile_response.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/change_bio_avatar_body.dart';
import 'package:tamely/models/params/edit_animal_profile_body.dart';
import 'package:tamely/models/params/edit_animal_profile_details_body.dart';
import 'package:tamely/models/params/get_payment_details_body.dart';
import 'package:tamely/models/params/login_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/params/register_body.dart';
import 'package:tamely/models/params/reset_password_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/show_people_to_follow_body.dart';
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/models/user_response_models.dart';
import 'package:tamely/models/get_appointment_details_response.dart';
import 'package:tamely/models/get_pet_details_response.dart';
import 'package:tamely/models/get_report_response.dart';
import 'package:tamely/models/get_scroll_status_response.dart';
import 'package:tamely/models/my_appointments_response.dart';
import 'package:tamely/models/params/change_appointment_status_body.dart';
import 'package:tamely/models/params/get_appointment_details_body.dart';
import 'package:tamely/models/params/get_runone_report_body.dart';
import 'package:tamely/models/params/get_runtwo_report_body.dart';
import 'package:tamely/models/params/get_scroll_status_body.dart';
import 'package:tamely/models/params/set_runone_rating_body.dart';
import 'package:tamely/models/params/set_runtwo_rating_body.dart';
import 'package:tamely/models/params/set_testimony_body.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:tamely/models/params/book_a_run_body.dart';

part 'api_client.g.dart';

///APIs class is for api tags
class Apis {
  static const MAX_SIZE = 10;
  static const TIMEOUT = 12000;

  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String checkUserName = '/user/isusernameavailable/{username}';
  static const String user = '/user';
  static const String changePassword = '/auth/password';
  static const String resetPassword = '/auth/reset-password-mail';
  static const String updatePassword = '/auth/update-password';
  static const String verifyAccount = '/auth/resendotp/{type}';
  static const String confirmAccount = '/user/confirm';
  static const String verifyResetPassword = '/auth/verify-reset-otp';
  static const String facebookLogin = '/auth/login/facebook';
  static const String googleLogin = '/auth/login/google';
  static const String changeAvatar = '/user/avatar';
  static const String userProfileDetails = '/user/userDetails';
  static const String userPosts = '/post/myPosts/0';
  static const String addBioAvatar = '/user/bioAndAvatar';

  //animal profile
  static const String animalProfileCreate = '/animal/register';
  static const String animalProfileDetails = '/animal/getPetDetails';
  static const String animalProfileEdit = '/animal/editPet';
  static const String animalProfileEditDetails = '/animal/editPetHabits';

  //complete profile
  static const String showPeopleToFollow = '/user/showPeopleToFollow';
  static const String sendFollowRequest = '/post/sendfollowrequest';
  static const String getPaymentDetails = '/serviceBooking/generateOrderId';

  // Booking Appointments

  static const String getPetDetails = '/serviceBooking/getPetDetails';
  static const String bookARun = '/serviceBooking/serviceBooking';

  // My Bookings Flow
  static const String getActiveAppointments =
      '/serviceBooking/getmyactiveAppointments';
  static const String getBookedAppointments =
      '/serviceBooking/getmybookedAppointments';
  static const String getPastAppointments =
      '/serviceBooking/getmypastAppointments';
  static const String getAppointmentDetails =
      '/serviceBooking/getAppointmentDetails';
  static const String changeAppointmentStatus =
      '/serviceBooking/changeAppointmentstatus';
  static const String getScrollStatus =
      '/serviceBooking/getscrollAppointmentstatus';
  static const String getRunningReport = '/serviceBooking/getReport';
  static const String setRunningRating =
      '/serviceBooking/giveRatingstoeachWalk';
  static const String setTestimony = '/serviceBooking/giveRatingstoeachWalk';
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
  Future<CommonResponse> verifyAccount(@Path("type") String type);

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
  Future<CommonResponse> updateImage(@Part(name: 'image') File image);

  @GET(Apis.userProfileDetails)
  Future<UserProfileDetailsResponse> getUserProfileDetails();

  @GET(Apis.userPosts)
  Future<ListOfPostResponse> getUserPosts();

  @PUT(Apis.addBioAvatar)
  Future<CommonResponse> changeBioAndAvatar(
      @Body() ChangeBioAvatarBody changeBioAvatarBody);

  @POST(Apis.animalProfileCreate)
  Future<AnimalProfileCreateResopnse> animalProfileCreate(
    @Part(name: "name") String name,
    @Part(name: "username") String username,
    @Part(name: "avatar") File avatar,
    @Part(name: "category") String category,
    @Part(name: "bio") String bio,
    @Part(name: "animalType") String animalType,
    @Part(name: "gender") String gender,
    @Part(name: "breed") String breed,
    @Part(name: "age") String age,
    @Part(name: "mating") bool mating,
    @Part(name: "adoption") bool adoption,
    @Part(name: "playBuddies") bool playBuddies,
    @Part(name: "registeredWithKennelClub") bool registeredWithKennelClub,
    @Part(name: "playFrom") String playFrom,
    @Part(name: "playTo") String playTo,
    @Part(name: "location") String location,
  );

  @PUT(Apis.animalProfileEdit)
  Future<EditResponse> editAnimalProfile(
    @Part(name: "name") String name,
    @Part(name: "username") String username,
    @Part(name: "avatar") String avatar,
    @Part(name: "category") String category,
    @Part(name: "bio") String bio,
    @Part(name: "animalType") String animalType,
    @Part(name: "gender") String gender,
    @Part(name: "breed") String breed,
    @Part(name: "age") String age,
    @Part(name: "mating") bool mating,
    @Part(name: "adoption") bool adoption,
    @Part(name: "playBuddies") bool playBuddies,
    @Part(name: "playFrom") String playFrom,
    @Part(name: "playTo") String playTo,
    @Part(name: "location") String location,
    @Part(name: "servicePet") bool servicePet,
    @Part(name: "spayed") bool spayed,
    @Part(name: "animalId") String animalId,
  );

  @POST(Apis.animalProfileDetails)
  Future<AnimalProfileDetailModelResponse> getAnimalProfileDetail(
      @Body() AnimalProfileDetailsBody animalProfileDetailsBody);

  // @PUT(Apis.animalProfileEdit)
  // Future<EditResponse> editAnimalProfile(
  //     @Body() EditAnimalProfileBody editAnimalProfileBody);

  @POST(Apis.animalProfileEditDetails)
  Future<AnimalProfileDetailModelResponse> editAnimalProfileDetails(
      @Body() EditAnimalProfileDetailsBody editAnimalProfileDetailsBody);

  @GET(Apis.showPeopleToFollow)
  Future<ListOfProfilesResponse> showPeoplesToFollow(
      @Body() ShowPeopleToFollowBody showPeopleToFollowBody);

  @POST(Apis.sendFollowRequest)
  Future<EditResponse> sendFollowRequest(
      @Body() SendFollowRequestBody sendFollowRequestBody);

  // Booking Appointments

  // -- Get Pet Details
  @POST(Apis.getPetDetails)
  Future<GetPetDetailsResponse> getPetDetails();

  // -- Booking A Run
  @POST(Apis.bookARun)
  Future<SendDataResponse> bookARun(@Body() BookARunBody bookARunBody);

  // -- Get Payment details
  @POST(Apis.getPaymentDetails)
  Future<GetPaymentDetailsResponse> getPaymentDetails(
      @Body() GetPaymentDetailsBody getPaymentDetailsBody);

  // My Bookings Flow

  // -- Get active appointments
  @POST(Apis.getActiveAppointments)
  Future<MyAppointmentsResponse> getActiveAppointments();

  // -- Get booked appointments
  @POST(Apis.getBookedAppointments)
  Future<MyAppointmentsResponse> getBookedAppointments();

  // -- Get past appointments
  @POST(Apis.getPastAppointments)
  Future<MyAppointmentsResponse> getPastAppointments();

  // -- Get Appointment Details
  @POST(Apis.getAppointmentDetails)
  Future<GetAppointmentDetailsResponse> getAppointmentDetails(
      @Body() GetAppointmentDetailsBody getAppointmentDetailsBody);

  // -- Change Appointment Status
  @POST(Apis.changeAppointmentStatus)
  Future<SendDataResponse> changeAppointmentStatus(
      @Body() ChangeAppointmentStatusBody changeAppointmentStatusBody);

  // -- Get Scroll Status
  @POST(Apis.getScrollStatus)
  Future<GetScrollStatusResponse> getScrollStatus(
      @Body() GetScrollStatusBody getScrollStatusBody);

  // -- Get Report Run One (from this)
  @POST(Apis.getRunningReport)
  Future<GetReportResponse> getRunOneReport(
      @Body() GetReportOneBody getReportOneBody);

  // -- Get Report Run Two
  @POST(Apis.getRunningReport)
  Future<GetReportResponse> getRunTwoReport(
      @Body() GetReportTwoBody getReportTwoBody);

  // -- Set Rating Run One
  @POST(Apis.setRunningRating)
  Future<SendDataResponse> setRunOneRating(
      @Body() SetRunOneRatingBody setRunOneRatingBody);

  // -- Set Rating Run Two
  @POST(Apis.setRunningRating)
  Future<SendDataResponse> setRunTwoRating(
      @Body() SetRunTwoRatingBody setRunTwoRatingBody);

  // -- Set Testimony
  @POST(Apis.setTestimony)
  Future<SendDataResponse> setTestimony(
      @Body() SetTestimonyBody setTestimonyBody);
}
