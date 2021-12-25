import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/ui/appointmentdetails/appointmentdetails_view.dart';
import 'package:tamely/ui/appointments/appointments_view.dart';
import 'package:tamely/ui/chat/chat_view.dart';
import 'package:tamely/ui/community/community_main_view/adoption/adoption_view.dart';
import 'package:tamely/ui/community/community_main_view/community_main_view.dart';
import 'package:tamely/ui/community/community_main_view/mating/mating_view.dart';
import 'package:tamely/ui/community/community_main_view/play_buddies/play_buddies_view.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_map_page/strays_near_you_map_view.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view.dart';
import 'package:tamely/ui/community/first_time_views/community_choose_interests/community_choose_interests_view.dart';
import 'package:tamely/ui/dashboard/dashboard.dart';
import 'package:tamely/ui/dogrunners/dogrunners_view.dart';
import 'package:tamely/ui/dogrunners/location_picker_map.dart';
import 'package:tamely/ui/dogrunningbooking/dogrunningbooking_view.dart';
import 'package:tamely/ui/dummy_development_screen.dart';
import 'package:tamely/ui/for_you/for_you_search/for_you_tab_search_view.dart';
import 'package:tamely/ui/forgotpassword/forgotpassword_view.dart';
import 'package:tamely/ui/forgotpassword/new_password_view.dart';
import 'package:tamely/ui/groups/create_group/create_group_view.dart';
import 'package:tamely/ui/groups/group_info/group_info_view.dart';
import 'package:tamely/ui/groups/groups_view.dart';
import 'package:tamely/ui/groups/manage_group/edit_group_info/edit_group_info_view.dart';
import 'package:tamely/ui/groups/manage_group/manage_group_view.dart';
import 'package:tamely/ui/groups/manage_group/members/member_view.dart';
import 'package:tamely/ui/livemap/livemap_view.dart';
import 'package:tamely/ui/login/login_view.dart';
import 'package:tamely/ui/newpost/newpostLocation/newpostLocation_view.dart';
import 'package:tamely/ui/newpost/newpost_view.dart';
import 'package:tamely/ui/notification/notification/notifications.dart';
import 'package:tamely/ui/notification/notification_main_page.dart';
import 'package:tamely/ui/onboarding/onboarding_view.dart';
import 'package:tamely/ui/otp/confirm_otp_view.dart';
import 'package:tamely/ui/payment/payment_view.dart';
import 'package:tamely/ui/phone_authentication/confirm_otp_phone/confirm_otp_phone_view.dart';
import 'package:tamely/ui/phone_authentication/phone_authentication_view.dart';
import 'package:tamely/ui/post/camera_screen.dart';
import 'package:tamely/ui/post/post_creation.dart';
import 'package:tamely/ui/post_detail/post_detial_page_view.dart';
import 'package:tamely/ui/post_detail/single_post_details_page/single_post_details_view.dart';
import 'package:tamely/ui/profile/profile_create_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/animal_profile_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/basic_info_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/guardians_and_relations.dart';
import 'package:tamely/ui/profilepage/completed_profile/add_details_profile_view.dart';
import 'package:tamely/ui/profilepage/completed_profile/follow_people_action_view.dart';
import 'package:tamely/ui/profilepage/count_info/list_of_followings_view.dart';
import 'package:tamely/ui/profilepage/create_animal_profile/create_animal_page_viewe.dart';
import 'package:tamely/ui/profilepage/profile_view.dart';
import 'package:tamely/ui/reportcard/reportcard_view.dart';
import 'package:tamely/ui/signup/signup_view.dart';
import 'package:tamely/ui/startup/startup_view.dart';
import 'package:tamely/ui/tamelydogrunning/tamelydogrunning_view.dart';
import '../ui/settings/settings_human_view.dart';
import '../ui/settings/settings_animal_view.dart';
import '../ui/bookings/bookings_view.dart';
import '../ui/bookmarks/bookmarks_view.dart';
import '../ui/feedback/feedback_view.dart';
import '../ui/help/help_view.dart';
import '../ui/wallet/wallet_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    //dummy development
    CupertinoRoute(page: DummyDevelopmentScreen),

    CupertinoRoute(page: OnBoardingView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: Dashboard),
    CupertinoRoute(page: SignUpView),
    CupertinoRoute(page: ConfirmOTPView),
    CupertinoRoute(page: PhoneAuthenticationView),
    CupertinoRoute(page: ConfirmOtpPhoneView),
    CupertinoRoute(page: ForgotPasswordView),
    CupertinoRoute(page: NewPasswordView),
    CupertinoRoute(page: ProfileView),
    CupertinoRoute(page: ProfileCreateView),
    CupertinoRoute(page: AddDetailsProfileView),
    CupertinoRoute(page: FollowPeopleProfileActionView),
    CupertinoRoute(page: ListOfFollowings),
    CupertinoRoute(page: CreateAnimalPageView),
    CupertinoRoute(page: ForYouTabSearchView),
    CupertinoRoute(page: CommunityChooseInterestView),
    CupertinoRoute(page: CommunityMainView),
    CupertinoRoute(page: AnimalProfileView),
    CupertinoRoute(page: AnimalBasicInfo),
    CupertinoRoute(page: CameraScreen),
    CupertinoRoute(page: GuardiansAndRelatedAnimalsView),
    CupertinoRoute(page: PostDetialsPageView),
    CupertinoRoute(page: SinglePostDetailsView),

    // Group routes
    CupertinoRoute(page: GroupsView),
    CupertinoRoute(page: CreateGroupView),
    CupertinoRoute(page: GroupInfoView),
    CupertinoRoute(page: ManageGroupView),
    CupertinoRoute(page: EditGroupBasicInfo),
    CupertinoRoute(page: MembersView),

    //create post
    CupertinoRoute(page: PostCreation),
    CupertinoRoute(page: NewPostLocation),
    CupertinoRoute(page: NewPost),

    //community routes
    CupertinoRoute(page: StraysNearYouView),
    CupertinoRoute(page: StrayNearYouMapView),
    CupertinoRoute(page: PlayBuddiesView),
    CupertinoRoute(page: MatingView),
    CupertinoRoute(page: AdoptionView),

    // dashboard routes
    CupertinoRoute(page: SettingsHumanView),
    CupertinoRoute(page: SettingsAnimalView),
    CupertinoRoute(page: FeedbackView),
    CupertinoRoute(page: BookingsView),
    CupertinoRoute(page: BookmarksView),
    CupertinoRoute(page: HelpView),
    CupertinoRoute(page: WalletView),
    CupertinoRoute(page: NotificationMainView),

    // Dog running
    CupertinoRoute(page: DogRunnersView),
    CupertinoRoute(page: TamelyDogRunnersView),
    CupertinoRoute(page: DogRunningBookingView),
    CupertinoRoute(page: PaymentView),
    CupertinoRoute(page: LocationPicker),

    // My Appointments
    CupertinoRoute(page: AppointmentsView),
    CupertinoRoute(page: AppointmentDetailsView),
    CupertinoRoute(page: ChatView),
    CupertinoRoute(page: LiveMapView),
    CupertinoRoute(page: ReportCardView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: TamelyApi),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
