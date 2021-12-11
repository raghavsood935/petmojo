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
import 'package:tamely/ui/dogrunners/location_picker_map.dart';
import 'package:tamely/ui/post/post_creation.dart';

import '../enum/walkNumber.dart';
import '../models/application_models.dart';
import '../models/my_animal_model.dart';
import '../models/post_response.dart';
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
import '../ui/dogrunningbooking/dogrunningbooking_view.dart';
import '../ui/dummy_development_screen.dart';
import '../ui/feedback/feedback_view.dart';
import '../ui/for_you/for_you_search/for_you_tab_search_view.dart';
import '../ui/forgotpassword/forgotpassword_view.dart';
import '../ui/forgotpassword/new_password_view.dart';
import '../ui/groups/create_group/create_group_view.dart';
import '../ui/groups/group_info/group_info_view.dart';
import '../ui/groups/groups_view.dart';
import '../ui/help/help_view.dart';
import '../ui/livemap/livemap_view.dart';
import '../ui/login/login_view.dart';
import '../ui/notification/notifications.dart';
import '../ui/onboarding/onboarding_view.dart';
import '../ui/otp/confirm_otp_view.dart';
import '../ui/payment/payment_view.dart';
import '../ui/post/camera_screen.dart';
import '../ui/post_detail/post_detial_page_view.dart';
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
import '../ui/tamelydogrunning/tamelyoverview/tamelyoverview_view.dart';
import '../ui/tamelydogrunning/tamelyratechart/tamelyratechart_view.dart';
import '../ui/tamelydogrunning/tamelyreviews/tamelyreviews_view.dart';
import '../ui/wallet/wallet_view.dart';

class Routes {
  static const String startupView = '/';
  static const String dummyDevelopmentScreen = '/dummy-development-screen';
  static const String onBoardingView = '/on-boarding-view';
  static const String loginView = '/login-view';
  static const String dashboard = '/Dashboard';
  static const String signUpView = '/sign-up-view';
  static const String confirmOTPView = '/confirm-ot-pView';
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
  static const String groupsView = '/groups-view';
  static const String cameraScreen = '/camera-screen';
  static const String postCreation = '/post-creation';
  static const String createGroupView = '/create-group-view';
  static const String groupInfoView = '/group-info-view';
  static const String guardiansAndRelatedAnimalsView =
      '/guardians-and-related-animals-view';
  static const String postDetialsPageView = '/post-detials-page-view';
  static const String straysNearYouView = '/strays-near-you-view';
  static const String strayNearYouMapView = '/stray-near-you-map-view';
  static const String playBuddiesView = '/play-buddies-view';
  static const String matingView = '/mating-view';
  static const String adoptionView = '/adoption-view';
  static const String settingsHumanView = '/settings-human-view';
  static const String settingsAnimalView = '/settings-animal-view';
  static const String feedbackView = '/feedback-view';
  static const String bookingsView = '/bookings-view';
  static const String bookmarksView = '/bookmarks-view';
  static const String helpView = '/help-view';
  static const String walletView = '/wallet-view';
  static const String notifications = '/Notifications';
  static const String dogRunnersView = '/dog-runners-view';
  static const String tamelyOverviewView = '/tamely-overview-view';
  static const String tamelyRateChartView = '/tamely-rate-chart-view';
  static const String tamelyReviewsView = '/tamely-reviews-view';
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
    onBoardingView,
    loginView,
    dashboard,
    signUpView,
    confirmOTPView,
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
    groupsView,
    cameraScreen,
    createGroupView,
    groupInfoView,
    guardiansAndRelatedAnimalsView,
    postDetialsPageView,
    straysNearYouView,
    strayNearYouMapView,
    playBuddiesView,
    matingView,
    adoptionView,
    settingsHumanView,
    settingsAnimalView,
    feedbackView,
    bookingsView,
    bookmarksView,
    helpView,
    walletView,
    notifications,
    dogRunnersView,
    tamelyOverviewView,
    tamelyRateChartView,
    tamelyReviewsView,
    tamelyDogRunnersView,
    dogRunningBookingView,
    locationPicker,
    paymentView,
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
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.dashboard, page: Dashboard),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.confirmOTPView, page: ConfirmOTPView),
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
    RouteDef(Routes.groupsView, page: GroupsView),
    RouteDef(Routes.cameraScreen, page: CameraScreen),
    RouteDef(Routes.postCreation, page: PostCreation),
    RouteDef(Routes.createGroupView, page: CreateGroupView),
    RouteDef(Routes.groupInfoView, page: GroupInfoView),
    RouteDef(Routes.guardiansAndRelatedAnimalsView,
        page: GuardiansAndRelatedAnimalsView),
    RouteDef(Routes.postDetialsPageView, page: PostDetialsPageView),
    RouteDef(Routes.straysNearYouView, page: StraysNearYouView),
    RouteDef(Routes.strayNearYouMapView, page: StrayNearYouMapView),
    RouteDef(Routes.playBuddiesView, page: PlayBuddiesView),
    RouteDef(Routes.matingView, page: MatingView),
    RouteDef(Routes.adoptionView, page: AdoptionView),
    RouteDef(Routes.settingsHumanView, page: SettingsHumanView),
    RouteDef(Routes.settingsAnimalView, page: SettingsAnimalView),
    RouteDef(Routes.feedbackView, page: FeedbackView),
    RouteDef(Routes.bookingsView, page: BookingsView),
    RouteDef(Routes.bookmarksView, page: BookmarksView),
    RouteDef(Routes.helpView, page: HelpView),
    RouteDef(Routes.walletView, page: WalletView),
    RouteDef(Routes.notifications, page: Notifications),
    RouteDef(Routes.dogRunnersView, page: DogRunnersView),
    RouteDef(Routes.tamelyOverviewView, page: TamelyOverviewView),
    RouteDef(Routes.tamelyRateChartView, page: TamelyRateChartView),
    RouteDef(Routes.tamelyReviewsView, page: TamelyReviewsView),
    RouteDef(Routes.tamelyDogRunnersView, page: TamelyDogRunnersView),
    RouteDef(Routes.dogRunningBookingView, page: DogRunningBookingView),
    RouteDef(Routes.locationPicker, page: LocationPicker),
    RouteDef(Routes.paymentView, page: PaymentView),
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
      var args = data.getArgs<DashboardArguments>(
        orElse: () => DashboardArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Dashboard(key: args.key),
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
          petId: args.petId,
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
    CameraScreen: (data) {
      var args = data.getArgs<CameraScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CameraScreen(args.cameras),
        settings: data,
      );
    },
    PostCreation: (data) {
      var args = data.getArgs<PostCreationArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PostCreation(),
        settings: data,
      );
    },
    CreateGroupView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const CreateGroupView(),
        settings: data,
      );
    },
    GroupInfoView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const GroupInfoView(),
        settings: data,
      );
    },
    GuardiansAndRelatedAnimalsView: (data) {
      var args = data.getArgs<GuardiansAndRelatedAnimalsViewArguments>(
        orElse: () => GuardiansAndRelatedAnimalsViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => GuardiansAndRelatedAnimalsView(key: args.key),
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
    StraysNearYouView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const StraysNearYouView(),
        settings: data,
      );
    },
    StrayNearYouMapView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const StrayNearYouMapView(),
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
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const BookmarksView(),
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
    Notifications: (data) {
      var args = data.getArgs<NotificationsArguments>(
        orElse: () => NotificationsArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Notifications(key: args.key),
        settings: data,
      );
    },
    DogRunnersView: (data) {
      var args = data.getArgs<DogRunnersArguments>(
        orElse: () => DogRunnersArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) =>  DogRunnersView(currentLocation: args.currentLocation,),
        settings: data,
      );
    },
    TamelyOverviewView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const TamelyOverviewView(),
        settings: data,
      );
    },
    TamelyRateChartView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const TamelyRateChartView(),
        settings: data,
      );
    },
    TamelyReviewsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const TamelyReviewsView(),
        settings: data,
      );
    },
    TamelyDogRunnersView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const TamelyDogRunnersView(),
        settings: data,
      );
    },
    DogRunningBookingView: (data) {
      var args = data.getArgs<DogRunningBookingViewArguments>(
        orElse: () => DogRunningBookingViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DogRunningBookingView(key: args.key),
        settings: data,
      );
    },
    LocationPicker: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) =>  LocationPicker(),
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

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// Dashboard arguments holder class
class DashboardArguments {
  final Key? key;
  DashboardArguments({this.key});
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
  ProfileViewArguments(
      {this.key,
      required this.menuScreenContext,
      required this.onScreenHideButtonPressed,
      this.hideStatus = false,
      required this.isInspectView,
      this.inspectProfileId,
      this.inspecterProfileId});
}

/// ProfileCreateView arguments holder class
class ProfileCreateViewArguments {
  final Key? key;
  final LocalUser user;
  final dynamic isEdit;
  final dynamic lastAvatarUrl;
  final dynamic isAnimal;
  final dynamic petID;
  ProfileCreateViewArguments(
      {this.key,
      required this.user,
      this.isEdit,
      this.lastAvatarUrl,
      this.isAnimal,
      this.petID});
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
  final bool? isEdit;
  CreateAnimalPageViewArguments({this.key, this.petId, this.isEdit});
}

/// AnimalProfileView arguments holder class
class AnimalProfileViewArguments {
  final Key? key;
  final String petId;
  AnimalProfileViewArguments({this.key, required this.petId});
}

/// AnimalBasicInfo arguments holder class
class AnimalBasicInfoArguments {
  final Key? key;
  final MyAnimalModelResponse animalModelResponse;
  AnimalBasicInfoArguments({this.key, required this.animalModelResponse});
}

/// CameraScreen arguments holder class
class CameraScreenArguments {
  final List<CameraDescription> cameras;
  CameraScreenArguments({required this.cameras});
}


/// PostCreation arguments holder class
class PostCreationArguments {
  final Key? key;
  PostCreationArguments({this.key});
}

/// GuardiansAndRelatedAnimalsView arguments holder class
class GuardiansAndRelatedAnimalsViewArguments {
  final Key? key;
  GuardiansAndRelatedAnimalsViewArguments({this.key});
}

/// PostDetialsPageView arguments holder class
class PostDetialsPageViewArguments {
  final Key? key;
  final PostResponse postResponse;
  PostDetialsPageViewArguments({this.key, required this.postResponse});
}

/// Notifications arguments holder class
class NotificationsArguments {
  final Key? key;
  NotificationsArguments({this.key});
}

/// DogRunners argument holder class
class DogRunnersArguments {
  final LatLng? currentLocation;
  DogRunnersArguments({this.currentLocation});
}

/// DogRunningBookingView arguments holder class
class DogRunningBookingViewArguments {
  final Key? key;
  DogRunningBookingViewArguments({this.key});
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
