import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:tamely/models/animal_profile_create_resopnse.dart';
import 'package:tamely/models/animal_profile_detail_model.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/change_bio_avatar_body.dart';
import 'package:tamely/models/params/animal_profile_create_body.dart';
import 'package:tamely/models/params/edit_animal_profile_details_body.dart';
import 'package:tamely/models/params/login_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/params/register_body.dart';
import 'package:tamely/models/params/reset_password_body.dart';
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/models/user_response_models.dart';

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
  static const String animalProfileCreate = '/animal/register';
  static const String animalProfileDetails = '/animal/getPetDetails';
  static const String animalProfileEditDetails = '/animal/editPet';
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
  Future<CommonResponse> getUserPosts();

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

  @POST(Apis.animalProfileDetails)
  Future<AnimalProfileDetailModelResponse> getAnimalProfileDetail(
      @Body() AnimalProfileDetailsBody animalProfileDetailsBody);

  @POST(Apis.animalProfileDetails)
  Future<AnimalProfileDetailModelResponse> editAnimalProfileDetails(
      @Body() EditAnimalProfileDetailsBody editAnimalProfileDetailsBody);
}
