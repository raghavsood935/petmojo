import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:tamely/models/animal_profile_create_resopnse.dart';
import 'package:tamely/models/animal_profile_detail_model.dart';
import 'package:tamely/models/avatar_link_response.dart';
import 'package:tamely/models/book_a_run_response.dart';
import 'package:tamely/models/bookmark_response.dart';
import 'package:tamely/models/comment_added_response.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/coupon_response.dart';
import 'package:tamely/models/create_post_response.dart';
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
import 'package:tamely/models/get_free_training_response.dart';
import 'package:tamely/models/get_free_walk_response.dart';
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
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/book_a_training_body.dart';
import 'package:tamely/models/params/change_bio_avatar_body.dart';
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
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/params/update_token_body.dart';
import 'package:tamely/models/params/verify_mobile_otp_body.dart';
import 'package:tamely/models/profile_details_by_id_response.dart';
import 'package:tamely/models/params/groups/change_group_description_body.dart';
import 'package:tamely/models/params/groups/create_group_body.dart';
import 'package:tamely/models/params/groups/update_group_hashtags_body.dart';
import 'package:tamely/models/params/groups/invite_people_group_body.dart';
import 'package:tamely/models/reorder_a_run_response.dart';
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
import 'package:tamely/models/params/apple_signin_body.dart';
part 'api_client.g.dart';

///APIs class is for api tags
class Apis {
  static const MAX_SIZE = 10;
  static const TIMEOUT = 12000;

  static const String imageToLink = '/user/getAvatarLink';

  static const String login = '/auth/login';
  static const String appleLogin = '/auth/login/apple';
  static const String register = '/auth/register';
  static const String updateFCMToken = '/auth/registerFCMtoken';
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
  static const String userPosts = '/post/myPosts';
  static const String userPostsById = '/post/getPostsById';
  static const String addBioAvatar = '/user/bioAndAvatar';

  static const String getProfileDetailsById = '/user/getUserDetailsById';
  static const String getListOfFollowers = '/user/followers';
  static const String getListOfFollowings = '/user/following';

  //animal guardians
  static const String getGuardians = '/animal/getGuardians';
  static const String getPendingGuardianRequest =
      '/user/getPendingGuardianRequests';
  static const String sendGuardianRequest = '/animal/addGuardian';
  static const String confirmGuardianRequest = '/animal/confirmGuardian';
  static const String rejectGuardianRequest = '/animal/rejectGuardian';

  //animal relations
  static const String getRelations = '/animal/getRelations';
  static const String getRelationsRequests = '/animal/getRelationRequests';
  static const String sendRelationsRequest = '/animal/sendRelationRequest';
  static const String confirmRelationsRequest = '/animal/confirmRelation';
  static const String rejectRelationRequest = '/animal/rejectRelation';

  //phone number verification
  static const String sendMobileOTP = '/auth/sendMobileOTP';
  static const String verifyMobileOTP = '/auth/verifyMobileOTP';
  static const String resendMobileOTP = '/auth/resendMobileOTP';

  //animal profile
  static const String generatePetUsername = '/animal/getUniquePetName';
  static const String animalProfileCreate = '/animal/register';
  static const String animalProfileDetails = '/animal/getPetDetails';
  static const String animalProfileEdit = '/animal/editPet';
  static const String animalProfileEditDetails = '/animal/editPetHabits';
  static const String animalProfileEditMainDetails =
      '/animal/editPetMainDetails';
  static const String editAnimalType = '/animal/editPet';
  static const String editAnimalBreedAndAge = '/animal/editBreedAndAge';

  //Bookmarks
  static const String getBookmarks = '/hamburger/getBookmarks';

  //complete profile
  static const String showPeopleToFollow = '/user/showPeopleToFollow';
  static const String sendFollowRequest = '/post/follow';

  //hamburger
  static const String submitFeedback = '/hamburger/submitFeedback';
  static const String getHelp = '/hamburger/getHelp';

  //feed page
  static const String feedPosts = '/post/feed';

  //for you page
  static const String searchProfiles = '/user/search';
  static const String forYouPost = '/post/foryoufeed';

  //post actions
  static const String createPost = '/post';
  static const String deletePost = '/post/deletePost';
  static const String likeDislikePost = '/post/vote';
  static const String bookmarkPost = '/user/{postID}/bookmark';

  //notification
  static const String notification = '/notification';

  //comment
  static const String addComment = '/comment/{commentID}';
  static const String fetchComment = '/comment/{commentID}/{counter}';

  // Booking Appointments -- Dog running
  static const String getFreeWalk = '/user/isFreeWalkAvailable';
  static const String setFreeWalk = '/user/updateFreeWalkStatus';
  static const String getPetDetails = '/serviceBooking/getPetDetails';
  static const String bookARun = '/serviceBooking/serviceBooking';
  static const String getPaymentDetails = '/serviceBooking/generateOrderId';
  static const String setPaymentDetails = '/service/postPayment';

  // Booking Appointments -- Dog training
  static const String getFreeTraining = '/user/isFreeTrainingSessionAvailable';
  static const String setFreeTraining = '/user/updateFreeTrainingSessionStatus';
  static const String bookATraining = '/serviceBooking/bookDogTrainingService';
  static const String setPaymentDetailsTraining =
      '/service/postTrainingPayment';

  //community
  // ---> Groups
  static const String getGroupDetails = '/community/getGroupDetails';
  static const String getGroupPosts = '/community/retrieveGroupFeed';
  static const String createGroup = '/community/createGroup';
  static const String changeDescription = '/community/changeDescription';
  static const String updateHashtags = '/community/updateHashtags';
  static const String editCoverPhoto = '/community/editCoverPhoto';
  static const String editGroupDetails = '/community/editGroupDetails';
  static const String invitePeople = '/community/invitePeople';
  static const String getMembers = '/community/getMembers';
  static const String showPendingInvitations =
      '/community/showPendingInvitations';
  static const String getJoinedGroups = '/community/getJoinedGroups';
  static const String joinGroup = '/community/joinGroup';
  static const String leaveGroup = '/community/leaveGroup';
  static const String makeAdmin = '/community/makeAdmin';
  static const String removeAdmin = '/community/removeAdmin';
  static const String removeMember = '/community/removeMember';
  static const String getAllGroups = '/community/getAllGroups';
  static const String deleteGroup = '/community/deleteGroup';
  static const String declineInvitation = '/community/declineInvitation';

  // --> Social Center
  static const String getStrays = '/community/getStrays';
  static const String getPlayBuddies = '/community/getPlayBuddies';
  static const String getAdoption = '/community/getAdoption';
  static const String getMating = '/community/getMating';

  //for Blogs
  static const String getBlogs = '/community/getBlogs';
  //for Blogs likes
  static const String likedBlog = '/community/likeblog';
  //for Blogs Details
  static const String getBlogDetails = '/community/getBlogDetails';
  static const String getBlogLikesDetails = '/community/getLikeDetails';

//E commerce
  static const String getProducts = '/product/getProducts';
  static const String getProductDetails = '/product/getProductDetails';
  static const String addToCart = '/product/addToCart';
  static const String getCartDetails = '/product/getCartDetails';
  static const String addToFavourites = '/product/addToFavourites';
  static const String deleteFromFavourites = '/product/deleteFromFavourite';
  static const String getFavouriteDetails = '/product/getFavouriteDetails';

  // My Bookings Flow
  static const String hasAppointments = '/serviceBooking/hasAppointments';

  static const String getActiveAppointments =
      '/serviceBooking/getmyactiveAppointments';
  static const String getBookedAppointments =
      '/serviceBooking/getmybookedAppointments';
  static const String getPastAppointments =
      '/serviceBooking/getmypastAppointments';

  // -- Dog running
  static const String reorderARun = '/serviceBooking/reorder';
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

  // -- Dog training
  static const String reorderATraining = '/serviceBooking/reorderTraining';
  static const String getTrainingAppointmentDetails =
      '/serviceBooking/getDogTrainingAppointmentDetails';
  static const String changeTrainingAppointmentStatus =
      '/serviceBooking/changeTrainingAppointmentstatus';
  static const String getTrainingScrollStatus =
      '/serviceBooking/getscrollSessionstatus';
  static const String getTrainingReport = '/serviceBooking/getTrainingReport';

  // -- Offers
  static const String getCouponAmount = '/serviceBooking/Verifycoupon';
  static const String setUsedCoupon = '/serviceBooking/MarkCoupon';
}

// @RestApi(baseUrl: "https://tamely.herokuapp.com/api/")
@RestApi(baseUrl: "http://3.14.68.70:9000/api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(Apis.login)
  Future<UserResponse> login(@Body() LoginBody loginBody);

  @POST(Apis.appleLogin)
  Future<UserResponse> appleLogin(@Body() AppleSigninBody appleSigninBody);

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

  @POST(Apis.sendMobileOTP)
  Future<EditResponse> sendMobileOTP(
      @Body() SendMobileOTPBody sendMobileOTPBody);

  @POST(Apis.resendMobileOTP)
  Future<EditResponse> resendMobileOTP(
      @Body() ResendMobileOTPBody resendMobileOTPBody);

  @POST(Apis.verifyMobileOTP)
  Future<UserResponse> verifyMobileOTP(
      @Body() VerifyMobileOTPBody verifyMobileOTPBody);

  @PUT(Apis.verifyResetPassword)
  Future<CommonResponse> verifyResetPassword(
      @Body() ConfirmOTPBody confirmOTPBody);

  @POST(Apis.facebookLogin)
  Future<UserResponse> facebookLogin(@Body() SocialLoginBody socialLoginBody);

  @POST(Apis.googleLogin)
  Future<UserResponse> googleLogin(@Body() SocialLoginBody socialLoginBody);

  @POST(Apis.register)
  Future<UserResponse> register(@Body() RegisterBody registerBody);

  @POST(Apis.updateFCMToken)
  Future<EditResponse> updateFCMToken(@Body() UpdateTokenBody updateTokenBody);

  @GET(Apis.checkUserName)
  Future<UserNameAvailableResponse> checkUserName(
      @Path("username") String username);

  @GET(Apis.notification)
  Future<ListOfNotificationResponse> getListOfNotification();

  @PUT(Apis.notification)
  Future<EditResponse> markAsReadNotification();

  @PUT(Apis.user)
  Future<UserResponse> updateProfile(@Body() ProfileCreateBody createBody);

  @PUT(Apis.changeAvatar)
  @MultiPart()
  Future<CommonResponse> updateImage(@Part(name: 'image') File image);

  @GET(Apis.userProfileDetails)
  Future<UserProfileDetailsResponse> getUserProfileDetails();

  //animal guardians
  @POST(Apis.getGuardians)
  Future<ListOfGuardiansResponse> getGuardians(
      @Body() GetGuardianBody getGuardianBody);

  @POST(Apis.getPendingGuardianRequest)
  Future<ListOfPendingRequestsResponse> getPendingGuardianRequest();

  @POST(Apis.sendGuardianRequest)
  Future<CommonResponse> sendGuardianRequest(
      @Body() SendGuardianRequestBody sendGuardianRequestBody);

  @POST(Apis.confirmGuardianRequest)
  Future<CommonResponse> confirmGuardianRequest(
      @Body() GetGuardianBody getGuardianBody);

  @POST(Apis.rejectGuardianRequest)
  Future<CommonResponse> rejectGuardianRequest(
      @Body() GetGuardianBody getGuardianBody);

  //animal relations
  @POST(Apis.getRelations)
  Future<ListOfRelationsResponse> getRelations(
      @Body() GetGuardianBody getGuardianBody);

  @POST(Apis.getRelationsRequests)
  Future<ListOfRelationsRequestResponse> getPendingRelationRequest(
      @Body() GetRelationRequestsBody getRelationRequestsBody);

  @POST(Apis.sendRelationsRequest)
  Future<CommonResponse> sendRelationRequest(
      @Body() SendRelationRequestBody sendRelationRequestBody);

  @POST(Apis.confirmRelationsRequest)
  Future<CommonResponse> confirmRelationRequest(
      @Body() ConfirmRelationRequestBody confirmRelationRequestBody);

  @POST(Apis.rejectRelationRequest)
  Future<CommonResponse> rejectRelationRequest(
      @Body() RejectRelationRequestBody rejectRelationRequestBody);

  @POST(Apis.imageToLink)
  Future<AvatarLinkResponse> imageToLink(@Part(name: 'image') File image);

  @POST(Apis.userPosts)
  Future<ListOfFeedPostResponse> getUserPosts();

  @POST(Apis.userPostsById)
  Future<ListOfFeedPostResponse> getUserPostsById(
      @Body() GetPostByIdBody getPostByIdBody);

  @POST(Apis.getProfileDetailsById)
  Future<ProfileDetailsByIdResponse> getProfileDetailsById(
      @Body() GetProfileDetailsByIdBody getProfileDetailsByIdBody);

  @POST(Apis.getListOfFollowers)
  Future<ListOfFollowersResponse> getListOfFollowers(
      @Body() FetchListOfFollowingBody fetchListOfFollowingBody);

  @POST(Apis.getListOfFollowings)
  Future<ListOfFollowingsResponse> getListOfFollowings(
      @Body() FetchListOfFollowingBody fetchListOfFollowingBody);

  @POST(Apis.feedPosts)
  Future<ListOfFeedPostResponse> getFeedPosts(@Body() CounterBody counterBody);

  @GET(Apis.generatePetUsername)
  Future<GeneratePetUsernameResponse> generatePetUsername();

  @PUT(Apis.addBioAvatar)
  Future<CommonResponse> changeBioAndAvatar(
      @Body() ChangeBioAvatarBody changeBioAvatarBody);

  @POST(Apis.animalProfileCreate)
  Future<AnimalProfileCreateResopnse> animalProfileCreate(
      @Body() CreateAnimalProfileBody createAnimalProfileBody);

  @POST(Apis.animalProfileCreate)
  Future<AnimalProfileCreateResopnse> animalProfileCreateNew(
      @Body() CreateAnimalProfileNewBody createAnimalProfileNewBody);

  @POST(Apis.editAnimalType)
  Future<EditResponse> editAnimalType(
      @Body() EditAnimalTypeBody editAnimalTypeBody);

  @POST(Apis.editAnimalBreedAndAge)
  Future<EditResponse> editAnimalBreedAndAge(
      @Body() EditAnimalBreedAgeBody editAnimalBreedAgeBody);

  @POST(Apis.animalProfileEdit)
  Future<EditResponse> editAnimalProfile(
      @Body() EditAnimalProfileBody editAnimalProfileBody);

  @POST(Apis.animalProfileDetails)
  Future<AnimalProfileDetailModelResponse> getAnimalProfileDetail(
      @Body() AnimalProfileDetailsBody animalProfileDetailsBody);

  @POST(Apis.animalProfileEditDetails)
  Future<AnimalProfileDetailModelResponse> editAnimalProfileDetails(
      @Body() EditAnimalProfileDetailsBody editAnimalProfileDetailsBody);

  @PATCH(Apis.animalProfileEditMainDetails)
  Future<EditResponse> editAnimalProfileMainDetails(
      @Body()
          EditAnimalProfileMainDetailsBody editAnimalProfileMainDetailsBody);

  // Bookmarks
  @POST(Apis.getBookmarks)
  Future<getBookmarks> getBookmarksDetails();

  @POST(Apis.showPeopleToFollow)
  Future<ListOfProfilesResponse> showPeoplesToFollow(
      @Body() ShowPeopleToFollowBody showPeopleToFollowBody);

  @POST(Apis.sendFollowRequest)
  Future<CommonResponse> sendFollowRequest(
      @Body() SendFollowRequestBody sendFollowRequestBody);

  @POST(Apis.likeDislikePost)
  Future<EditResponse> likeDislikePost(
      @Body() LikeDislikePostBody likeDislikePostBody);

  @POST(Apis.bookmarkPost)
  Future<BookmarkResponse> bookmarkPost(@Path("postID") String postID);

  @POST(Apis.createPost)
  Future<CreatePostResponse> createPost(@Body() CreatePostBody createPostBody);

  @DELETE(Apis.deletePost)
  Future<EditResponse> deletePost(@Body() DeletePostBody deletePostBody);

  //Guardian And Relation

  // For you page
  // --search profiles
  @POST(Apis.searchProfiles)
  Future<ListOfProfilesForYouResponse> searchProfiles(
      @Body() SearchProfilesBody searchProfilesBody);

  // for you posts
  @POST(Apis.forYouPost)
  Future<ListOfFeedPostResponse> listOfForYouPost(
      @Body() CounterBody counterBody);

  // Hamburger
  // -- submit our feedback
  @POST(Apis.submitFeedback)
  Future<CommonResponse> submitFeedback(
      @Body() SubmitFeedbackBody submitFeedbackBody);

  // -- need help
  @POST(Apis.getHelp)
  Future<CommonResponse> getHelp(@Body() NeedHelpBody needHelpBody);

  //comments
  @POST(Apis.addComment)
  Future<CommentAddedResponse> addComment(
      @Path("commentID") String postId, @Body() AddCommentBody addCommentBody);

  @POST(Apis.fetchComment)
  Future<ListOfCommentsResponse> fetchComments(
      @Path("commentID") String postId, @Path("counter") int counter);

  //Community
  // ---> get Group Details
  @POST(Apis.getGroupDetails)
  Future<GetGroupInfoResponse> getGroupDetails(
      @Body() GroupBasicBody groupBasicBody);

  // ---> get Group Posts
  @POST(Apis.getGroupPosts)
  Future<ListOfFeedPostResponse> getGroupPosts(
      @Body() GroupBasicWithCounterBody groupBasicWithCounterBody);

  // ---> Create Group
  @POST(Apis.createGroup)
  Future<GroupCreateResponse> createGroup(
      @Body() CreateGroupBody createGroupBody);

  // ---> Change description Group
  @POST(Apis.changeDescription)
  Future<EditResponse> changeDescription(
      @Body() ChangeGroupDescriptionBody changeGroupDescriptionBody);

  // ---> Update hashtags Group
  @POST(Apis.updateHashtags)
  Future<EditResponse> updateHashtags(
      @Body() UpdateGroupHashtagsBody updateGroupHashtagsBody);

  // ---> Edit Group Cover Photo
  @POST(Apis.editCoverPhoto)
  Future<EditResponse> editCoverPhoto(
      @Body() EditGroupCoverBody editGroupCoverBody);

  // ---> Edit Group Details
  @POST(Apis.editGroupDetails)
  Future<EditResponse> editGroupDetails(
      @Body() EditGroupDetailsBody editGroupDetailsBody);

  // ---> Invite peoples Group
  @POST(Apis.invitePeople)
  Future<EditResponse> invitePeople(
      @Body() InvitePeopleGroupBody invitePeopleGroupBody);

  // ---> Get members of Group
  @POST(Apis.getMembers)
  Future<GetAllGroupMembersResponse> getMembers(
      @Body() GroupBasicWithCounterBody groupBasicWithCounterBody);

  // ---> Show pending invitations
  @POST(Apis.showPendingInvitations)
  Future<PendingGroupInvitationResponse> showPendingInvitations();

  // ---> Get Joined Groups
  @POST(Apis.getJoinedGroups)
  Future<GetJoinedGroupResponse> getJoinedGroups();

  // ---> Join group
  @POST(Apis.joinGroup)
  Future<EditResponse> joinGroup(@Body() GroupBasicBody groupBasicBody);

  // ---> Leave group
  @POST(Apis.leaveGroup)
  Future<EditResponse> leaveGroup(@Body() GroupBasicBody groupBasicBody);

  // ---> Make admin
  @POST(Apis.makeAdmin)
  Future<EditResponse> makeAdmin(@Body() MakeGroupAdminBody makeGroupAdminBody);

  // ---> Remove admin
  @POST(Apis.removeAdmin)
  Future<EditResponse> removeAdmin(
      @Body() MakeGroupAdminBody makeGroupAdminBody);

  // ---> Remove member
  @POST(Apis.removeMember)
  Future<EditResponse> removeMember(
      @Body() MakeGroupAdminBody makeGroupAdminBody);

  // ---> Get All Groups
  @POST(Apis.getAllGroups)
  Future<GetAllGroupResponse> getAllGroups(@Body() CounterBody counterBody);

  // ---> Delete Groups
  @POST(Apis.deleteGroup)
  Future<EditResponse> deleteGroup(@Body() GroupBasicBody groupBasicBody);

  // ---> Decline Groups Invitation
  @POST(Apis.declineInvitation)
  Future<EditResponse> declineInvitation(@Body() GroupBasicBody groupBasicBody);

  //getBlogs
  @POST(Apis.getBlogs)
  Future<getBlogs> GetBlogs(@Body() CounterBody counterBody);

  // ---> Like Blog
  @POST(Apis.likedBlog)
  Future<LikedBlogResponse> likedBlog(@Body() LikedBlogBody likedBlogBody);

  // ---> Get Blog Details
  @POST(Apis.getBlogDetails)
  Future<GetBlogDetailsResponse> getBlogDetails(
      @Body() LikedBlogBody likedBlogBody);

  // ---> Get Blog Likes Details
  @POST(Apis.getBlogLikesDetails)
  Future<GetBlogLikeDetailsResponse> getBlogLikesDetails(
      @Body() LikedBlogBody likedBlogBody);

  // ---> Get Strays
  @POST(Apis.getStrays)
  Future<GetAnimalsByLocationResponse> getStrays(
      @Body() GetAnimalByLocationBody getAnimalByLocationBody);

  // ---> Get Strays
  @POST(Apis.getPlayBuddies)
  Future<GetAnimalsByLocationResponse> getPlayBuddies(
      @Body() GetAnimalByLocationBody getAnimalByLocationBody);

  // ---> Get Strays
  @POST(Apis.getAdoption)
  Future<GetAnimalsByLocationResponse> getAdoption(
      @Body() GetAnimalByLocationBody getAnimalByLocationBody);

  // ---> Get Strays
  @POST(Apis.getMating)
  Future<GetAnimalsByLocationResponse> getMating(
      @Body() GetAnimalByLocationBody getAnimalByLocationBody);

//E Commerce
  // ---> Get List Of Products
  @POST(Apis.getProducts)
  Future<ProductListResponse> getProducts(@Body() CounterBody counterBody);

  // ---> Get Product Details
  @POST(Apis.getProductDetails)
  Future<ProductDetailsByIdResponse> getProductDetails(
      @Body() ProductIdCommonBody productIdCommonBody);

  // ---> Add To Cart
  @POST(Apis.addToCart)
  Future<EditResponse> addToCart(
      @Body() ProductIdCommonBody productIdCommonBody);

  // ---> Get List Of Cart
  @POST(Apis.getCartDetails)
  Future<FavInnerProductListResponse> getCartDetails();

  // ---> Add To Favourites
  @POST(Apis.addToFavourites)
  Future<EditResponse> addToFavourites(
      @Body() ProductIdCommonBody productIdCommonBody);

  // ---> Delete From Favourites
  @POST(Apis.deleteFromFavourites)
  Future<EditResponse> deleteFromFavourites(
      @Body() ProductIdCommonBody productIdCommonBody);

  // ---> Get List Of Favourite Products
  @POST(Apis.getFavouriteDetails)
  Future<FavProductListResponse> getFavouriteDetails();

  // Booking Appointments -- Dog running

  // -- Get Free Walk
  @POST(Apis.getFreeWalk)
  Future<GetFreeWalkResponse> getFreeWalk();

  // -- Set Free Walk
  @POST(Apis.setFreeWalk)
  Future<SendDataResponse> setFreeWalk();

  // -- Get Pet Details
  @POST(Apis.getPetDetails)
  Future<GetPetDetailsResponse> getPetDetails();

  // -- Booking A Run
  @POST(Apis.bookARun)
  Future<BookARunResponse> bookARun(@Body() BookARunBody bookARunBody);

  // -- Get Payment details
  @POST(Apis.getPaymentDetails)
  Future<GetPaymentDetailsResponse> getPaymentDetails(
      @Body() GetPaymentDetailsBody getPaymentDetailsBody);

  // -- Set Payment details Running
  @PATCH(Apis.setPaymentDetails)
  Future<SendDataResponse> setPaymentDetails(
      @Body() SetPaymentDetailsBody setPaymentDetailsBody);

  // Booking Appointments -- Dog training

  // -- Get Free Training (Working)
  @POST(Apis.getFreeTraining)
  Future<GetFreeTrainingResponse> getFreeTraining();

  // -- Set Free Training (Working)
  @POST(Apis.setFreeTraining)
  Future<SendDataResponse> setFreeTraining();

  // -- Booking A Training (Working)
  @POST(Apis.bookATraining)
  Future<BookARunResponse> bookATraining(
      @Body() BookATrainingBody bookATrainingBody);

  // -- Set Payment details Training (Working)
  @PATCH(Apis.setPaymentDetailsTraining)
  Future<SendDataResponse> setPaymentDetailsTraining(
      @Body() SetPaymentDetailsBody setPaymentDetailsBody);

  // My Bookings Flow

  // -- Check has Appointments (Working)
  @POST(Apis.hasAppointments)
  Future<HasAppointmentsResponse> hasAppointments();

  // -- Get active appointments (Working)
  @POST(Apis.getActiveAppointments)
  Future<MyAppointmentsResponse> getActiveAppointments();

  // -- Get booked appointments (Working)
  @POST(Apis.getBookedAppointments)
  Future<MyAppointmentsResponse> getBookedAppointments();

  // -- Get past appointments (Working)
  @POST(Apis.getPastAppointments)
  Future<MyAppointmentsResponse> getPastAppointments();

  // -- Dog running

  // -- Reorder A Run
  @POST(Apis.reorderARun)
  Future<ReorderARunResponse> reorderARun(
      @Body() ReorderARunBody reorderARunBody);

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

  // -- Get Report Run One
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

  // -- Dog training

  // -- Reorder A Training (Not Done yet)
  @POST(Apis.reorderATraining)
  Future<ReorderARunResponse> reorderATraining(
      @Body() ReorderARunBody reorderARunBody);

  // -- Get Appointment Details Training (Working)
  @POST(Apis.getTrainingAppointmentDetails)
  Future<GetTrainingAppointmentDetailsResponse> getTrainingAppointmentDetails(
      @Body() GetAppointmentDetailsBody getAppointmentDetailsBody);

  // -- Change Appointment Status Training (Not using it)
  @POST(Apis.changeTrainingAppointmentStatus)
  Future<SendDataResponse> changeTrainingAppointmentStatus(
      @Body() ChangeAppointmentStatusBody changeAppointmentStatusBody);

  // -- Get Scroll Status Training  (Working)
  @POST(Apis.getTrainingScrollStatus)
  Future<GetTrainingScrollStatusResponse> getTrainingScrollStatus(
      @Body() GetTrainingScrollStatusBody getTrainingScrollStatusBody);

  // -- Get Report Training (Can not check now)
  @POST(Apis.getTrainingReport)
  Future<GetTrainingReportResponse> getTrainingReport(
      @Body() GetTrainingReportBody getTrainingReportBody);

  // -- Get Coupon Amount
  @POST(Apis.getCouponAmount)
  Future<CouponResponse> getCouponAmount(@Body() CouponBody couponBody);

  // -- Set Used Coupon
  @POST(Apis.setUsedCoupon)
  Future<SendDataResponse> setUsedCoupon(@Body() CouponBody couponBody);
}
