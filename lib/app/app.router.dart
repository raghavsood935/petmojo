// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../enum/walkNumber.dart';
import '../models/application_models.dart';
import '../models/feed_post_response.dart';
import '../models/get_animals_by_location_response.dart';
import '../models/get_blogs_model.dart';
import '../models/my_animal_model.dart';
import '../ui/appointmentdetails/appointmentdetails_view.dart';
import '../ui/appointments/appointments_view.dart';
import '../ui/bookings/bookings_view.dart';
import '../ui/bookmarks/bookmarks_view.dart';
import '../ui/chat/chat_view.dart';
import '../ui/community/community_main_view/adoption/adoption_view.dart';
import '../ui/community/community_main_view/community_main_view.dart';
import '../ui/community/community_main_view/mating/mating_view.dart';
import '../ui/community/community_main_view/play_buddies/play_buddies_view.dart';
import '../ui/community/community_main_view/strays_near_you/strays_near_you_map_page/strays_near_you_map_view.dart';
import '../ui/community/community_main_view/strays_near_you/strays_near_you_view.dart';
import '../ui/community/first_time_views/community_choose_interests/community_choose_interests_view.dart';
import '../ui/dashboard/dashboard.dart';
import '../ui/dogrunners/dogrunners_view.dart';
import '../ui/dogrunners/location_picker_map.dart';
import '../ui/dogrunningbooking/dogrunningbooking_view.dart';
import '../ui/dummy_development_screen.dart';
import '../ui/exploreblogs/explore_blog_search/blogs_deatils_page/blog_detail_view.dart';
import '../ui/exploreblogs/explore_blogs_view.dart';
import '../ui/feedback/feedback_view.dart';
import '../ui/for_you/for_you_search/for_you_tab_search_view.dart';
import '../ui/forgotpassword/forgotpassword_view.dart';
import '../ui/forgotpassword/new_password_view.dart';
import '../ui/groups/create_group/create_group_fisrt_page/create_group_fisrt_page_view.dart';
import '../ui/groups/create_group/create_group_second_page/create_group_second_page_view.dart';
import '../ui/groups/create_group/create_group_third_page/create_group_third_page_view.dart';
import '../ui/groups/explore_groups/explore_groups_view.dart';
import '../ui/groups/group_info/group_info_view.dart';
import '../ui/groups/groups_view.dart';
import '../ui/groups/manage_group/edit_group_info/edit_group_info_view.dart';
import '../ui/groups/manage_group/manage_group_view.dart';
import '../ui/groups/manage_group/members/member_view.dart';
import '../ui/groups/trending_groups/trending_groups_view.dart';
import '../ui/help/help_view.dart';
import '../ui/livemap/livemap_view.dart';
import '../ui/login/login_view.dart';
import '../ui/newpost/newpostLocation/newpostLocation_view.dart';
import '../ui/newpost/newpost_view.dart';
import '../ui/notification/notification_main_page.dart';
import '../ui/onboarding/onboarding_view.dart';
import '../ui/otp/confirm_otp_view.dart';
import '../ui/payment/payment_view.dart';
import '../ui/phone_authentication/confirm_otp_phone/confirm_otp_phone_view.dart';
import '../ui/phone_authentication/phone_authentication_view.dart';
import '../ui/post/camera_screen.dart';
import '../ui/post/post_creation.dart';
import '../ui/post_detail/post_detial_page_view.dart';
import '../ui/post_detail/single_post_details_page/single_post_details_view.dart';
import '../ui/profile/profile_create_view.dart';
import '../ui/profilepage/animal_profile/animal_profile_view.dart';
import '../ui/profilepage/animal_profile/basic_info/basic_info_view.dart';
import '../ui/profilepage/animal_profile/guardians_and_relations/guardians_and_relations.dart';
import '../ui/profilepage/completed_profile/add_details_profile_view.dart';
import '../ui/profilepage/completed_profile/follow_people_action_view.dart';
import '../ui/profilepage/count_info/list_of_followings_view.dart';
import '../ui/profilepage/create_animal_profile/create_animal_page_viewe.dart';
import '../ui/profilepage/profile_view.dart';
import '../ui/reportcard/reportcard_view.dart';
import '../ui/settings/settings_animal_view.dart';
import '../ui/settings/settings_human_view.dart';
import '../ui/signup/signup_view.dart';
import '../ui/startup/startup_view.dart';
import '../ui/tamelydogrunning/tamelydogrunning_view.dart';
import '../ui/wallet/wallet_view.dart';
import '../widgets/full_screen_image.dart';

class Routes {
  static const String startupView = '/';
  static const String dummyDevelopmentScreen = '/dummy-development-screen';
  static const String fullScreenImage = '/full-screen-image';
  static const String onBoardingView = '/on-boarding-view';
  static const String loginView = '/login-view';
  static const String dashboard = '/Dashboard';
  static const String signUpView = '/sign-up-view';
  static const String confirmOTPView = '/confirm-ot-pView';
  static const String phoneAuthenticationView = '/phone-authentication-view';
  static const String confirmOtpPhoneView = '/confirm-otp-phone-view';
  static const String forgotPasswordView = '/forgot-password-view';
  static const String newPasswordView = '/new-password-view';
  static const String profileView = '/profile-view';
  static const String profileCreateView = '/profile-create-view';
  static const String addDetailsProfileView = '/add-details-profile-view';
  static const String followPeopleProfileActionView =
      '/follow-people-profile-action-view';
  static const String listOfFollowings = '/list-of-followings';
  static const String createAnimalPageView = '/create-animal-page-view';
  static const String forYouTabSearchView = '/for-you-tab-search-view';
  static const String communityChooseInterestView =
      '/community-choose-interest-view';
  static const String communityMainView = '/community-main-view';
  static const String animalProfileView = '/animal-profile-view';
  static const String animalBasicInfo = '/animal-basic-info';
  static const String cameraScreen = '/camera-screen';
  static const String guardiansAndRelatedAnimalsView =
      '/guardians-and-related-animals-view';
  static const String postDetialsPageView = '/post-detials-page-view';
  static const String singlePostDetailsView = '/single-post-details-view';
  static const String groupsView = '/groups-view';
  static const String createGroupFirstView = '/create-group-first-view';
  static const String createGroupSecondView = '/create-group-second-view';
  static const String createGroupThirdView = '/create-group-third-view';
  static const String groupInfoView = '/group-info-view';
  static const String manageGroupView = '/manage-group-view';
  static const String editGroupBasicInfo = '/edit-group-basic-info';
  static const String membersView = '/members-view';
  static const String exploreGroupView = '/explore-group-view';
  static const String trendingGroups = '/trending-groups';
  static const String postCreation = '/post-creation';
  static const String newPostLocation = '/new-post-location';
  static const String newPost = '/new-post';
  static const String straysNearYouView = '/strays-near-you-view';
  static const String strayNearYouMapView = '/stray-near-you-map-view';
  static const String playBuddiesView = '/play-buddies-view';
  static const String matingView = '/mating-view';
  static const String adoptionView = '/adoption-view';
  static const String exploreBlogs = '/explore-blogs';
  static const String blogDetailsPageView = '/blog-details-page-view';
  static const String settingsHumanView = '/settings-human-view';
  static const String settingsAnimalView = '/settings-animal-view';
  static const String feedbackView = '/feedback-view';
  static const String bookingsView = '/bookings-view';
  static const String bookmarksView = '/bookmarks-view';
  static const String helpView = '/help-view';
  static const String walletView = '/wallet-view';
  static const String notificationMainView = '/notification-main-view';
  static const String dogRunnersView = '/dog-runners-view';
  static const String tamelyDogRunnersView = '/tamely-dog-runners-view';
  static const String dogRunningBookingView = '/dog-running-booking-view';
  static const String paymentView = '/payment-view';
  static const String locationPicker = '/location-picker';
  static const String appointmentsView = '/appointments-view';
  static const String appointmentDetailsView = '/appointment-details-view';
  static const String chatView = '/chat-view';
  static const String liveMapView = '/live-map-view';
  static const String reportCardView = '/report-card-view';
  static const all = <String>{
    startupView,
    dummyDevelopmentScreen,
    fullScreenImage,
    onBoardingView,
    loginView,
    dashboard,
    signUpView,
    confirmOTPView,
    phoneAuthenticationView,
    confirmOtpPhoneView,
    forgotPasswordView,
    newPasswordView,
    profileView,
    profileCreateView,
    addDetailsProfileView,
    followPeopleProfileActionView,
    listOfFollowings,
    createAnimalPageView,
    forYouTabSearchView,
    communityChooseInterestView,
    communityMainView,
    animalProfileView,
    animalBasicInfo,
    cameraScreen,
    guardiansAndRelatedAnimalsView,
    postDetialsPageView,
    singlePostDetailsView,
    groupsView,
    createGroupFirstView,
    createGroupSecondView,
    createGroupThirdView,
    groupInfoView,
    manageGroupView,
    editGroupBasicInfo,
    membersView,
    exploreGroupView,
    trendingGroups,
    postCreation,
    newPostLocation,
    newPost,
    straysNearYouView,
    strayNearYouMapView,
    playBuddiesView,
    matingView,
    adoptionView,
    exploreBlogs,
    blogDetailsPageView,
    settingsHumanView,
    settingsAnimalView,
    feedbackView,
    bookingsView,
    bookmarksView,
    helpView,
    walletView,
    notificationMainView,
    dogRunnersView,
    tamelyDogRunnersView,
    dogRunningBookingView,
    paymentView,
    locationPicker,
    appointmentsView,
    appointmentDetailsView,
    chatView,
    liveMapView,
    reportCardView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.dummyDevelopmentScreen, page: DummyDevelopmentScreen),
    RouteDef(Routes.fullScreenImage, page: FullScreenImage),
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.dashboard, page: Dashboard),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.confirmOTPView, page: ConfirmOTPView),
    RouteDef(Routes.phoneAuthenticationView, page: PhoneAuthenticationView),
    RouteDef(Routes.confirmOtpPhoneView, page: ConfirmOtpPhoneView),
    RouteDef(Routes.forgotPasswordView, page: ForgotPasswordView),
    RouteDef(Routes.newPasswordView, page: NewPasswordView),
    RouteDef(Routes.profileView, page: ProfileView),
    RouteDef(Routes.profileCreateView, page: ProfileCreateView),
    RouteDef(Routes.addDetailsProfileView, page: AddDetailsProfileView),
    RouteDef(Routes.followPeopleProfileActionView,
        page: FollowPeopleProfileActionView),
    RouteDef(Routes.listOfFollowings, page: ListOfFollowings),
    RouteDef(Routes.createAnimalPageView, page: CreateAnimalPageView),
    RouteDef(Routes.forYouTabSearchView, page: ForYouTabSearchView),
    RouteDef(Routes.communityChooseInterestView,
        page: CommunityChooseInterestView),
    RouteDef(Routes.communityMainView, page: CommunityMainView),
    RouteDef(Routes.animalProfileView, page: AnimalProfileView),
    RouteDef(Routes.animalBasicInfo, page: AnimalBasicInfo),
    RouteDef(Routes.cameraScreen, page: CameraScreen),
    RouteDef(Routes.guardiansAndRelatedAnimalsView,
        page: GuardiansAndRelatedAnimalsView),
    RouteDef(Routes.postDetialsPageView, page: PostDetialsPageView),
    RouteDef(Routes.singlePostDetailsView, page: SinglePostDetailsView),
    RouteDef(Routes.groupsView, page: GroupsView),
    RouteDef(Routes.createGroupFirstView, page: CreateGroupFirstView),
    RouteDef(Routes.createGroupSecondView, page: CreateGroupSecondView),
    RouteDef(Routes.createGroupThirdView, page: CreateGroupThirdView),
    RouteDef(Routes.groupInfoView, page: GroupInfoView),
    RouteDef(Routes.manageGroupView, page: ManageGroupView),
    RouteDef(Routes.editGroupBasicInfo, page: EditGroupBasicInfo),
    RouteDef(Routes.membersView, page: MembersView),
    RouteDef(Routes.exploreGroupView, page: ExploreGroupView),
    RouteDef(Routes.trendingGroups, page: TrendingGroups),
    RouteDef(Routes.postCreation, page: PostCreation),
    RouteDef(Routes.newPostLocation, page: NewPostLocation),
    RouteDef(Routes.newPost, page: NewPost),
    RouteDef(Routes.straysNearYouView, page: StraysNearYouView),
    RouteDef(Routes.strayNearYouMapView, page: StrayNearYouMapView),
    RouteDef(Routes.playBuddiesView, page: PlayBuddiesView),
    RouteDef(Routes.matingView, page: MatingView),
    RouteDef(Routes.adoptionView, page: AdoptionView),
    RouteDef(Routes.exploreBlogs, page: ExploreBlogs),
    RouteDef(Routes.blogDetailsPageView, page: BlogDetailsPageView),
    RouteDef(Routes.settingsHumanView, page: SettingsHumanView),
    RouteDef(Routes.settingsAnimalView, page: SettingsAnimalView),
    RouteDef(Routes.feedbackView, page: FeedbackView),
    RouteDef(Routes.bookingsView, page: BookingsView),
    RouteDef(Routes.bookmarksView, page: BookmarksView),
    RouteDef(Routes.helpView, page: HelpView),
    RouteDef(Routes.walletView, page: WalletView),
    RouteDef(Routes.notificationMainView, page: NotificationMainView),
    RouteDef(Routes.dogRunnersView, page: DogRunnersView),
    RouteDef(Routes.tamelyDogRunnersView, page: TamelyDogRunnersView),
    RouteDef(Routes.dogRunningBookingView, page: DogRunningBookingView),
    RouteDef(Routes.paymentView, page: PaymentView),
    RouteDef(Routes.locationPicker, page: LocationPicker),
    RouteDef(Routes.appointmentsView, page: AppointmentsView),
    RouteDef(Routes.appointmentDetailsView, page: AppointmentDetailsView),
    RouteDef(Routes.chatView, page: ChatView),
    RouteDef(Routes.liveMapView, page: LiveMapView),
    RouteDef(Routes.reportCardView, page: ReportCardView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    DummyDevelopmentScreen: (data) {
      var args = data.getArgs<DummyDevelopmentScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DummyDevelopmentScreen(
          key: args.key,
          title: args.title,
        ),
        settings: data,
      );
    },
    FullScreenImage: (data) {
      var args = data.getArgs<FullScreenImageArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => FullScreenImage(
          key: args.key,
          url: args.url,
        ),
        settings: data,
      );
    },
    OnBoardingView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const OnBoardingView(),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    Dashboard: (data) {
      var args = data.getArgs<DashboardArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Dashboard(
          key: args.key,
          initialPageState: args.initialPageState,
          isNeedToUpdateProfile: args.isNeedToUpdateProfile,
          isHuman: args.isHuman,
          petID: args.petID,
          petToken: args.petToken,
          initialState: args.initialState,
        ),
        settings: data,
      );
    },
    SignUpView: (data) {
      var args = data.getArgs<SignUpViewArguments>(
        orElse: () => SignUpViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpView(key: args.key),
        settings: data,
      );
    },
    ConfirmOTPView: (data) {
      var args = data.getArgs<ConfirmOTPViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ConfirmOTPView(
          key: args.key,
          isEmailVerify: args.isEmailVerify,
          verificationData: args.verificationData,
          verificationType: args.verificationType,
        ),
        settings: data,
      );
    },
    PhoneAuthenticationView: (data) {
      var args = data.getArgs<PhoneAuthenticationViewArguments>(
        orElse: () => PhoneAuthenticationViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PhoneAuthenticationView(key: args.key),
        settings: data,
      );
    },
    ConfirmOtpPhoneView: (data) {
      var args = data.getArgs<ConfirmOtpPhoneViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ConfirmOtpPhoneView(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
        settings: data,
      );
    },
    ForgotPasswordView: (data) {
      var args = data.getArgs<ForgotPasswordViewArguments>(
        orElse: () => ForgotPasswordViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ForgotPasswordView(key: args.key),
        settings: data,
      );
    },
    NewPasswordView: (data) {
      var args = data.getArgs<NewPasswordViewArguments>(
        orElse: () => NewPasswordViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => NewPasswordView(key: args.key),
        settings: data,
      );
    },
    ProfileView: (data) {
      var args = data.getArgs<ProfileViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProfileView(
          key: args.key,
          menuScreenContext: args.menuScreenContext,
          onScreenHideButtonPressed: args.onScreenHideButtonPressed,
          hideStatus: args.hideStatus,
          isInspectView: args.isInspectView,
          inspectProfileId: args.inspectProfileId,
          inspecterProfileId: args.inspecterProfileId,
          inspecterProfileType: args.inspecterProfileType,
          isFollowing: args.isFollowing,
        ),
        settings: data,
      );
    },
    ProfileCreateView: (data) {
      var args = data.getArgs<ProfileCreateViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProfileCreateView(
          key: args.key,
          user: args.user,
          isEdit: args.isEdit,
          lastAvatarUrl: args.lastAvatarUrl,
          isAnimal: args.isAnimal,
          petID: args.petID,
          petToken: args.petToken,
        ),
        settings: data,
      );
    },
    AddDetailsProfileView: (data) {
      var args = data.getArgs<AddDetailsProfileViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AddDetailsProfileView(
          key: args.key,
          lastUrl: args.lastUrl,
          lastBio: args.lastBio,
        ),
        settings: data,
      );
    },
    FollowPeopleProfileActionView: (data) {
      var args =
          data.getArgs<FollowPeopleProfileActionViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => FollowPeopleProfileActionView(
          key: args.key,
          id: args.id,
        ),
        settings: data,
      );
    },
    ListOfFollowings: (data) {
      var args = data.getArgs<ListOfFollowingsArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ListOfFollowings(
          key: args.key,
          id: args.id,
          isFollowers: args.isFollowers,
        ),
        settings: data,
      );
    },
    CreateAnimalPageView: (data) {
      var args = data.getArgs<CreateAnimalPageViewArguments>(
        orElse: () => CreateAnimalPageViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateAnimalPageView(
          key: args.key,
          petId: args.petId,
          petToken: args.petToken,
          isEdit: args.isEdit,
        ),
        settings: data,
      );
    },
    ForYouTabSearchView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ForYouTabSearchView(),
        settings: data,
      );
    },
    CommunityChooseInterestView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const CommunityChooseInterestView(),
        settings: data,
      );
    },
    CommunityMainView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const CommunityMainView(),
        settings: data,
      );
    },
    AnimalProfileView: (data) {
      var args = data.getArgs<AnimalProfileViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AnimalProfileView(
          key: args.key,
          isFromDashboard: args.isFromDashboard,
          id: args.id,
          token: args.token,
          isInspectView: args.isInspectView,
          inspecterProfileId: args.inspecterProfileId,
          inspecterProfileType: args.inspecterProfileType,
        ),
        settings: data,
      );
    },
    AnimalBasicInfo: (data) {
      var args = data.getArgs<AnimalBasicInfoArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AnimalBasicInfo(
          key: args.key,
          animalModelResponse: args.animalModelResponse,
          petToken: args.petToken,
          isEditable: args.isEditable,
        ),
        settings: data,
      );
    },
    CameraScreen: (data) {
      var args = data.getArgs<CameraScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CameraScreen(args.cameras),
        settings: data,
      );
    },
    GuardiansAndRelatedAnimalsView: (data) {
      var args =
          data.getArgs<GuardiansAndRelatedAnimalsViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => GuardiansAndRelatedAnimalsView(
          key: args.key,
          petID: args.petID,
          petToken: args.petToken,
        ),
        settings: data,
      );
    },
    PostDetialsPageView: (data) {
      var args = data.getArgs<PostDetialsPageViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PostDetialsPageView(
          key: args.key,
          postResponse: args.postResponse,
        ),
        settings: data,
      );
    },
    SinglePostDetailsView: (data) {
      var args = data.getArgs<SinglePostDetailsViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SinglePostDetailsView(
          key: args.key,
          postResponse: args.postResponse,
        ),
        settings: data,
      );
    },
    GroupsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const GroupsView(),
        settings: data,
      );
    },
    CreateGroupFirstView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const CreateGroupFirstView(),
        settings: data,
      );
    },
    CreateGroupSecondView: (data) {
      var args = data.getArgs<CreateGroupSecondViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateGroupSecondView(
          key: args.key,
          groupId: args.groupId,
          isFromEditView: args.isFromEditView,
          description: args.description,
          hashtag: args.hashtag,
        ),
        settings: data,
      );
    },
    CreateGroupThirdView: (data) {
      var args = data.getArgs<CreateGroupThirdViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateGroupThirdView(
          key: args.key,
          groupId: args.groupId,
          isFromEditView: args.isFromEditView,
        ),
        settings: data,
      );
    },
    GroupInfoView: (data) {
      var args = data.getArgs<GroupInfoViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => GroupInfoView(
          key: args.key,
          groupId: args.groupId,
        ),
        settings: data,
      );
    },
    ManageGroupView: (data) {
      var args = data.getArgs<ManageGroupViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ManageGroupView(
          key: args.key,
          groupId: args.groupId,
          name: args.name,
          avatar: args.avatar,
          description: args.description,
          hashTag: args.hashTag,
          isMember: args.isMember,
          isAdmin: args.isAdmin,
        ),
        settings: data,
      );
    },
    EditGroupBasicInfo: (data) {
      var args = data.getArgs<EditGroupBasicInfoArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => EditGroupBasicInfo(
          key: args.key,
          groupId: args.groupId,
          name: args.name,
          avatar: args.avatar,
          description: args.description,
          hashTag: args.hashTag,
        ),
        settings: data,
      );
    },
    MembersView: (data) {
      var args = data.getArgs<MembersViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MembersView(
          key: args.key,
          groupId: args.groupId,
          isMember: args.isMember,
          isAdmin: args.isAdmin,
        ),
        settings: data,
      );
    },
    ExploreGroupView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ExploreGroupView(),
        settings: data,
      );
    },
    TrendingGroups: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const TrendingGroups(),
        settings: data,
      );
    },
    PostCreation: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PostCreation(),
        settings: data,
      );
    },
    NewPostLocation: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const NewPostLocation(),
        settings: data,
      );
    },
    NewPost: (data) {
      var args = data.getArgs<NewPostArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => NewPost(
          key: args.key,
          path: args.path,
        ),
        settings: data,
      );
    },
    StraysNearYouView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const StraysNearYouView(),
        settings: data,
      );
    },
    StrayNearYouMapView: (data) {
      var args = data.getArgs<StrayNearYouMapViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => StrayNearYouMapView(
          key: args.key,
          animals: args.animals,
        ),
        settings: data,
      );
    },
    PlayBuddiesView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PlayBuddiesView(),
        settings: data,
      );
    },
    MatingView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const MatingView(),
        settings: data,
      );
    },
    AdoptionView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AdoptionView(),
        settings: data,
      );
    },
    ExploreBlogs: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ExploreBlogs(),
        settings: data,
      );
    },
    BlogDetailsPageView: (data) {
      var args = data.getArgs<BlogDetailsPageViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => BlogDetailsPageView(
          key: args.key,
          blog: args.blog,
        ),
        settings: data,
      );
    },
    SettingsHumanView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SettingsHumanView(),
        settings: data,
      );
    },
    SettingsAnimalView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SettingsAnimalView(),
        settings: data,
      );
    },
    FeedbackView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const FeedbackView(),
        settings: data,
      );
    },
    BookingsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const BookingsView(),
        settings: data,
      );
    },
    BookmarksView: (data) {
      var args = data.getArgs<BookmarksViewArguments>(
        orElse: () => BookmarksViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => BookmarksView(key: args.key),
        settings: data,
      );
    },
    HelpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const HelpView(),
        settings: data,
      );
    },
    WalletView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const WalletView(),
        settings: data,
      );
    },
    NotificationMainView: (data) {
      var args = data.getArgs<NotificationMainViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => NotificationMainView(
          key: args.key,
          haveAnyRequests: args.haveAnyRequests,
        ),
        settings: data,
      );
    },
    DogRunnersView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DogRunnersView(),
        settings: data,
      );
    },
    TamelyDogRunnersView: (data) {
      var args = data.getArgs<TamelyDogRunnersViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TamelyDogRunnersView(
          key: args.key,
          currentLocation: args.currentLocation,
        ),
        settings: data,
      );
    },
    DogRunningBookingView: (data) {
      var args = data.getArgs<DogRunningBookingViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DogRunningBookingView(
          key: args.key,
          currentLocation: args.currentLocation,
        ),
        settings: data,
      );
    },
    PaymentView: (data) {
      var args = data.getArgs<PaymentViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PaymentView(
          key: args.key,
          amount: args.amount,
          bookingId: args.bookingId,
        ),
        settings: data,
      );
    },
    LocationPicker: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LocationPicker(),
        settings: data,
      );
    },
    AppointmentsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AppointmentsView(),
        settings: data,
      );
    },
    AppointmentDetailsView: (data) {
      var args = data.getArgs<AppointmentDetailsViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AppointmentDetailsView(
          key: args.key,
          appointmentId: args.appointmentId,
        ),
        settings: data,
      );
    },
    ChatView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ChatView(),
        settings: data,
      );
    },
    LiveMapView: (data) {
      var args = data.getArgs<LiveMapViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LiveMapView(
          key: args.key,
          walkNumber: args.walkNumber,
          serviceProviderId: args.serviceProviderId,
          userId: args.userId,
          appointmentId: args.appointmentId,
        ),
        settings: data,
      );
    },
    ReportCardView: (data) {
      var args = data.getArgs<ReportCardViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ReportCardView(
          key: args.key,
          noOfDogs: args.noOfDogs,
          dogs: args.dogs,
          date: args.date,
          walkNumber: args.walkNumber,
          appointmentId: args.appointmentId,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DummyDevelopmentScreen arguments holder class
class DummyDevelopmentScreenArguments {
  final Key? key;
  final String title;
  DummyDevelopmentScreenArguments({this.key, required this.title});
}

/// FullScreenImage arguments holder class
class FullScreenImageArguments {
  final Key? key;
  final String url;
  FullScreenImageArguments({this.key, required this.url});
}

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// Dashboard arguments holder class
class DashboardArguments {
  final Key? key;
  final int initialPageState;
  final bool isNeedToUpdateProfile;
  final bool isHuman;
  final String petID;
  final String petToken;
  final int initialState;
  DashboardArguments(
      {this.key,
      required this.initialPageState,
      required this.isNeedToUpdateProfile,
      required this.isHuman,
      required this.petID,
      required this.petToken,
      required this.initialState});
}

/// SignUpView arguments holder class
class SignUpViewArguments {
  final Key? key;
  SignUpViewArguments({this.key});
}

/// ConfirmOTPView arguments holder class
class ConfirmOTPViewArguments {
  final Key? key;
  final bool isEmailVerify;
  final String verificationData;
  final String verificationType;
  ConfirmOTPViewArguments(
      {this.key,
      required this.isEmailVerify,
      required this.verificationData,
      required this.verificationType});
}

/// PhoneAuthenticationView arguments holder class
class PhoneAuthenticationViewArguments {
  final Key? key;
  PhoneAuthenticationViewArguments({this.key});
}

/// ConfirmOtpPhoneView arguments holder class
class ConfirmOtpPhoneViewArguments {
  final Key? key;
  final String phoneNumber;
  ConfirmOtpPhoneViewArguments({this.key, required this.phoneNumber});
}

/// ForgotPasswordView arguments holder class
class ForgotPasswordViewArguments {
  final Key? key;
  ForgotPasswordViewArguments({this.key});
}

/// NewPasswordView arguments holder class
class NewPasswordViewArguments {
  final Key? key;
  NewPasswordViewArguments({this.key});
}

/// ProfileView arguments holder class
class ProfileViewArguments {
  final Key? key;
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  final bool isInspectView;
  final String? inspectProfileId;
  final String? inspecterProfileId;
  final String? inspecterProfileType;
  final dynamic isFollowing;
  ProfileViewArguments(
      {this.key,
      required this.menuScreenContext,
      required this.onScreenHideButtonPressed,
      this.hideStatus = false,
      required this.isInspectView,
      this.inspectProfileId,
      this.inspecterProfileId,
      this.inspecterProfileType,
      this.isFollowing});
}

/// ProfileCreateView arguments holder class
class ProfileCreateViewArguments {
  final Key? key;
  final LocalUser user;
  final dynamic isEdit;
  final dynamic lastAvatarUrl;
  final dynamic isAnimal;
  final dynamic petID;
  final dynamic petToken;
  ProfileCreateViewArguments(
      {this.key,
      required this.user,
      this.isEdit,
      this.lastAvatarUrl,
      this.isAnimal,
      this.petID,
      this.petToken});
}

/// AddDetailsProfileView arguments holder class
class AddDetailsProfileViewArguments {
  final Key? key;
  final String lastUrl;
  final String lastBio;
  AddDetailsProfileViewArguments(
      {this.key, required this.lastUrl, required this.lastBio});
}

/// FollowPeopleProfileActionView arguments holder class
class FollowPeopleProfileActionViewArguments {
  final Key? key;
  final String id;
  FollowPeopleProfileActionViewArguments({this.key, required this.id});
}

/// ListOfFollowings arguments holder class
class ListOfFollowingsArguments {
  final Key? key;
  final String id;
  final bool isFollowers;
  ListOfFollowingsArguments(
      {this.key, required this.id, required this.isFollowers});
}

/// CreateAnimalPageView arguments holder class
class CreateAnimalPageViewArguments {
  final Key? key;
  final String? petId;
  final String? petToken;
  final bool? isEdit;
  CreateAnimalPageViewArguments(
      {this.key, this.petId, this.petToken, this.isEdit});
}

/// AnimalProfileView arguments holder class
class AnimalProfileViewArguments {
  final Key? key;
  final bool isFromDashboard;
  final dynamic id;
  final dynamic token;
  final bool isInspectView;
  final String? inspecterProfileId;
  final String? inspecterProfileType;
  AnimalProfileViewArguments(
      {this.key,
      required this.isFromDashboard,
      this.id,
      this.token,
      required this.isInspectView,
      this.inspecterProfileId,
      this.inspecterProfileType});
}

/// AnimalBasicInfo arguments holder class
class AnimalBasicInfoArguments {
  final Key? key;
  final MyAnimalModelResponse animalModelResponse;
  final String petToken;
  final bool isEditable;
  AnimalBasicInfoArguments(
      {this.key,
      required this.animalModelResponse,
      required this.petToken,
      required this.isEditable});
}

/// CameraScreen arguments holder class
class CameraScreenArguments {
  final List<CameraDescription> cameras;
  CameraScreenArguments({required this.cameras});
}

/// GuardiansAndRelatedAnimalsView arguments holder class
class GuardiansAndRelatedAnimalsViewArguments {
  final Key? key;
  final String petID;
  final String petToken;
  GuardiansAndRelatedAnimalsViewArguments(
      {this.key, required this.petID, required this.petToken});
}

/// PostDetialsPageView arguments holder class
class PostDetialsPageViewArguments {
  final Key? key;
  final FeedPostResponse postResponse;
  PostDetialsPageViewArguments({this.key, required this.postResponse});
}

/// SinglePostDetailsView arguments holder class
class SinglePostDetailsViewArguments {
  final Key? key;
  final FeedPostResponse postResponse;
  SinglePostDetailsViewArguments({this.key, required this.postResponse});
}

/// CreateGroupSecondView arguments holder class
class CreateGroupSecondViewArguments {
  final Key? key;
  final String groupId;
  final bool isFromEditView;
  final String description;
  final List<String> hashtag;
  CreateGroupSecondViewArguments(
      {this.key,
      required this.groupId,
      required this.isFromEditView,
      required this.description,
      required this.hashtag});
}

/// CreateGroupThirdView arguments holder class
class CreateGroupThirdViewArguments {
  final Key? key;
  final String groupId;
  final bool isFromEditView;
  CreateGroupThirdViewArguments(
      {this.key, required this.groupId, required this.isFromEditView});
}

/// GroupInfoView arguments holder class
class GroupInfoViewArguments {
  final Key? key;
  final String groupId;
  GroupInfoViewArguments({this.key, required this.groupId});
}

/// ManageGroupView arguments holder class
class ManageGroupViewArguments {
  final Key? key;
  final String groupId;
  final String name;
  final String avatar;
  final String description;
  final List<String> hashTag;
  final bool isMember;
  final bool isAdmin;
  ManageGroupViewArguments(
      {this.key,
      required this.groupId,
      required this.name,
      required this.avatar,
      required this.description,
      required this.hashTag,
      required this.isMember,
      required this.isAdmin});
}

/// EditGroupBasicInfo arguments holder class
class EditGroupBasicInfoArguments {
  final Key? key;
  final String groupId;
  final String name;
  final String avatar;
  final String description;
  final List<String> hashTag;
  EditGroupBasicInfoArguments(
      {this.key,
      required this.groupId,
      required this.name,
      required this.avatar,
      required this.description,
      required this.hashTag});
}

/// MembersView arguments holder class
class MembersViewArguments {
  final Key? key;
  final String groupId;
  final bool isMember;
  final bool isAdmin;
  MembersViewArguments(
      {this.key,
      required this.groupId,
      required this.isMember,
      required this.isAdmin});
}

/// NewPost arguments holder class
class NewPostArguments {
  final Key? key;
  final String path;
  NewPostArguments({this.key, required this.path});
}

/// StrayNearYouMapView arguments holder class
class StrayNearYouMapViewArguments {
  final Key? key;
  final List<GetAnimalsByLocationDetailsResponse> animals;
  StrayNearYouMapViewArguments({this.key, required this.animals});
}

/// BlogDetailsPageView arguments holder class
class BlogDetailsPageViewArguments {
  final Key? key;
  final blogDetails blog;
  BlogDetailsPageViewArguments({this.key, required this.blog});
}

/// BookmarksView arguments holder class
class BookmarksViewArguments {
  final Key? key;
  BookmarksViewArguments({this.key});
}

/// NotificationMainView arguments holder class
class NotificationMainViewArguments {
  final Key? key;
  final bool haveAnyRequests;
  NotificationMainViewArguments({this.key, required this.haveAnyRequests});
}

/// TamelyDogRunnersView arguments holder class
class TamelyDogRunnersViewArguments {
  final Key? key;
  final LatLng currentLocation;
  TamelyDogRunnersViewArguments({this.key, required this.currentLocation});
}

/// DogRunningBookingView arguments holder class
class DogRunningBookingViewArguments {
  final Key? key;
  final LatLng currentLocation;
  DogRunningBookingViewArguments({this.key, required this.currentLocation});
}

/// PaymentView arguments holder class
class PaymentViewArguments {
  final Key? key;
  final int amount;
  final String bookingId;
  PaymentViewArguments(
      {this.key, required this.amount, required this.bookingId});
}

/// AppointmentDetailsView arguments holder class
class AppointmentDetailsViewArguments {
  final Key? key;
  final String appointmentId;
  AppointmentDetailsViewArguments({this.key, required this.appointmentId});
}

/// LiveMapView arguments holder class
class LiveMapViewArguments {
  final Key? key;
  final WalkNumber walkNumber;
  final String serviceProviderId;
  final String userId;
  final String appointmentId;
  LiveMapViewArguments(
      {this.key,
      required this.walkNumber,
      required this.serviceProviderId,
      required this.userId,
      required this.appointmentId});
}

/// ReportCardView arguments holder class
class ReportCardViewArguments {
  final Key? key;
  final int noOfDogs;
  final List<String> dogs;
  final DateTime date;
  final WalkNumber walkNumber;
  final String appointmentId;
  ReportCardViewArguments(
      {this.key,
      required this.noOfDogs,
      required this.dogs,
      required this.date,
      required this.walkNumber,
      required this.appointmentId});
}
