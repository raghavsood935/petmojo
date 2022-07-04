import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/services/aws_upload_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/ui/DogGroomingService/DgAppointment/DgAppointmentdetails/dg_appointmentdetails_view.dart';
import 'package:tamely/ui/DogGroomingService/DgAppointment/DgReportcard/dg_reportcard_view.dart';
import 'package:tamely/ui/DogGroomingService/DgBookingService/DgBooking/dg_doggroomingbooking_view.dart';
import 'package:tamely/ui/DogGroomingService/DgBookingService/DgOpening/dg_opening_view.dart';
import 'package:tamely/ui/DogGroomingService/DgBookingService/DgPayment/dg_payment_view.dart';
import 'package:tamely/ui/DogRunningService/DrAppointment/DrAppointmentdetails/dr_appointmentdetails_view.dart';
import 'package:tamely/ui/DogRunningService/DrAppointment/DrLivemap/dr_livemap_view.dart';
import 'package:tamely/ui/DogRunningService/DrAppointment/DrReportcard/dr_reportcard_view.dart';
import 'package:tamely/ui/DogRunningService/DrBookingService/DrBooking/dr_dogrunningbooking_view.dart';
import 'package:tamely/ui/DogRunningService/DrBookingService/DrOpening/dr_opening_view.dart';
import 'package:tamely/ui/DogRunningService/DrBookingService/DrPayment/dr_payment_view.dart';
import 'package:tamely/ui/DogTrainingService/DtAppointment/DtAppointmentdetails/dt_appointmentdetails_view.dart';
import 'package:tamely/ui/DogTrainingService/DtAppointment/DtReportcard/dt_reportcard_view.dart';
import 'package:tamely/ui/DogTrainingService/DtBookingService/DtBooking/dt_dogtrainingbooking_view.dart';
import 'package:tamely/ui/DogTrainingService/DtBookingService/DtOpening/dt_opening_view.dart';
import 'package:tamely/ui/DogTrainingService/DtBookingService/DtPayment/dt_payment_view.dart';
import 'package:tamely/ui/myActiveAppointments/appointments_view.dart';
import 'package:tamely/ui/chat/chat_view.dart';
import 'package:tamely/ui/community/community_main_view/adoption/adoption_view.dart';
import 'package:tamely/ui/community/community_main_view/community_main_view.dart';
import 'package:tamely/ui/community/community_main_view/mating/mating_view.dart';
import 'package:tamely/ui/community/community_main_view/play_buddies/play_buddies_view.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_map_page/strays_near_you_map_view.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view.dart';
import 'package:tamely/ui/community/first_time_views/community_choose_interests/community_choose_interests_view.dart';
import 'package:tamely/ui/dashboard/dashboard.dart';
import 'package:tamely/ui/dummy_development_screen.dart';
import 'package:tamely/ui/e_commerce/cart/cart_view.dart';
import 'package:tamely/ui/e_commerce/check_out_page/check_out_view.dart';
import 'package:tamely/ui/e_commerce/gps_tracker/gps_tracker_view.dart';
import 'package:tamely/ui/e_commerce/main_page/e_commerce_main_view.dart';
import 'package:tamely/ui/e_commerce/order_detail_page/order_detail_view.dart';
import 'package:tamely/ui/e_commerce/product_bookings/bookings_main_view.dart';
import 'package:tamely/ui/e_commerce/product_detail/product_detail_view.dart';
import 'package:tamely/ui/exploreblogs/explore_blog_search/blogs_deatils_page/blog_detail_view.dart';
import 'package:tamely/ui/exploreblogs/explore_blogs_view.dart';
import 'package:tamely/ui/for_you/for_you_search/for_you_tab_search_view.dart';
import 'package:tamely/ui/forgotpassword/forgotpassword_view.dart';
import 'package:tamely/ui/forgotpassword/new_password_view.dart';
import 'package:tamely/ui/groups/create_group/create_group_fisrt_page/create_group_fisrt_page_view.dart';
import 'package:tamely/ui/groups/create_group/create_group_second_page/create_group_second_page_view.dart';
import 'package:tamely/ui/groups/create_group/create_group_third_page/create_group_third_page_view.dart';
import 'package:tamely/ui/groups/explore_groups/explore_groups_view.dart';
import 'package:tamely/ui/groups/group_info/group_info_view.dart';
import 'package:tamely/ui/groups/groups_view.dart';
import 'package:tamely/ui/groups/manage_group/edit_group_info/edit_group_info_view.dart';
import 'package:tamely/ui/groups/manage_group/manage_group_view.dart';
import 'package:tamely/ui/groups/manage_group/members/member_view.dart';
import 'package:tamely/ui/groups/trending_groups/trending_groups_view.dart';
import 'package:tamely/ui/login/login_view.dart';
import 'package:tamely/ui/myPastAppointments/past_appointments_view.dart';
import 'package:tamely/ui/newpost/newpostLocation/newpostLocation_view.dart';
import 'package:tamely/ui/newpost/newpost_view.dart';
import 'package:tamely/ui/notification/notification_main_page.dart';
import 'package:tamely/ui/DogRunningService/DrBookingService/DrLocationPickerMap/location_picker_map.dart';
import 'package:tamely/ui/onboarding/onboarding_view.dart';
import 'package:tamely/ui/otp/confirm_otp_view.dart';
import 'package:tamely/ui/phone_authentication/confirm_otp_phone/confirm_otp_phone_view.dart';
import 'package:tamely/ui/phone_authentication/phone_authentication_view.dart';
import 'package:tamely/ui/post/camera_screen.dart';
import 'package:tamely/ui/post/post_creation.dart';
import 'package:tamely/ui/post_detail/post_detial_page_view.dart';
import 'package:tamely/ui/post_detail/single_post_details_page/single_post_details_view.dart';
import 'package:tamely/ui/profile/profile_create_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/animal_profile_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/basic_info_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/create_animal_profile_new/page_one/create_animal_profile_new_page_one.dart';
import 'package:tamely/ui/profilepage/animal_profile/create_animal_profile_new/page_three/create_animal_profile_new_page_three.dart';
import 'package:tamely/ui/profilepage/animal_profile/create_animal_profile_new/page_two/create_animal_profile_new_page_two.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/guardians_and_relations.dart';
import 'package:tamely/ui/profilepage/completed_profile/add_details_profile_view.dart';
import 'package:tamely/ui/profilepage/completed_profile/follow_people_action_view.dart';
import 'package:tamely/ui/profilepage/count_info/list_of_followings_view.dart';
import 'package:tamely/ui/profilepage/create_animal_profile/create_animal_page_viewe.dart';
import 'package:tamely/ui/profilepage/profile_view.dart';
import 'package:tamely/ui/services/videos_page/videos_page_view.dart';
import 'package:tamely/ui/signup/signup_view.dart';
import 'package:tamely/ui/startup/startup_view.dart';
import 'package:tamely/widgets/full_screen_image.dart';
import '../ui/DogTrainingService/DtAppointment/DtUpgradeSoon/DtSelectPackage/dt_selectpackage_view.dart';
import '../ui/DogTrainingService/DtAppointment/DtUpgradeSoon/DtUpgradePayment/dt_upgrade_payment_view.dart';
import '../ui/DogTrainingService/DtAppointment/DtUpgradeSoon/DtUpgradePlan/dt_upgradeplan_view.dart';
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
    CupertinoRoute(page: FullScreenImage),

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

    //Create animal profile new ui routes
    CupertinoRoute(page: CreateAnimalProfileNewPageOne),
    CupertinoRoute(page: CreateAnimalProfileNewPageTwo),
    CupertinoRoute(page: CreateAnimalProfileNewPageThree),

    // Group routes
    CupertinoRoute(page: GroupsView),
    CupertinoRoute(page: CreateGroupFirstView),
    CupertinoRoute(page: CreateGroupSecondView),
    CupertinoRoute(page: CreateGroupThirdView),
    CupertinoRoute(page: GroupInfoView),
    CupertinoRoute(page: ManageGroupView),
    CupertinoRoute(page: EditGroupBasicInfo),
    CupertinoRoute(page: MembersView),
    CupertinoRoute(page: ExploreGroupView),
    CupertinoRoute(page: TrendingGroups),

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
    CupertinoRoute(page: ExploreBlogs),
    CupertinoRoute(page: BlogDetailsPageView),

    //E-Commerce
    CupertinoRoute(page: ECommerceMainView),
    CupertinoRoute(page: ProductDetailView),
    CupertinoRoute(page: CartView),
    CupertinoRoute(page: CheckOutView),
    CupertinoRoute(page: OrderDetailPage),
    CupertinoRoute(page: ProductBookingsMainView),
    CupertinoRoute(page: GPSTrackerPageView),

    // dashboard routes
    CupertinoRoute(page: SettingsHumanView),
    CupertinoRoute(page: SettingsAnimalView),
    CupertinoRoute(page: FeedbackView),
    CupertinoRoute(page: BookingsView),
    CupertinoRoute(page: BookmarksView),
    CupertinoRoute(page: HelpView),
    CupertinoRoute(page: WalletView),
    CupertinoRoute(page: NotificationMainView),

    // Services
    CupertinoRoute(page: AppointmentsView), // (Edit)
    CupertinoRoute(page: MyPastAppointmentsView),
    CupertinoRoute(page: VideosSectionView),

    // 1 - Dog Running service

    // Booking Service
    // At DogRunningService / DrBookingService
    CupertinoRoute(page: DRDogRunningBookingView), // (New)
    CupertinoRoute(page: LocationPicker), // (Common)
    CupertinoRoute(page: DROpening), // (New)
    CupertinoRoute(page: DRPaymentView), // (New)

    // My Appointment
    // At DogRunningService / DrAppointment
    CupertinoRoute(page: DRAppointmentDetailsView), // (New)
    CupertinoRoute(page: DRLiveMapView), // (Based)
    CupertinoRoute(page: DRReportCardView), // (New)
    CupertinoRoute(page: ChatView),

    // 2 - Dog Training service

    // Booking Service
    // At DogTrainingService / DtBookingService
    CupertinoRoute(page: DTDogTrainingBookingView), // (New)
    CupertinoRoute(page: DTOpening), // (New)
    CupertinoRoute(page: DTPaymentView), // (New)
    CupertinoRoute(page: DTPlanSelectionView), // (New)

    // My Appointment
    // At DogTrainingService / DtAppointment
    CupertinoRoute(page: DTAppointmentDetailsView), // (New)
    CupertinoRoute(page: DTReportCardView), // (New)
    CupertinoRoute(page: DTSelectPackageView), // (New)
    CupertinoRoute(page: DTUpgradePlanView), // (New)
    CupertinoRoute(page: DTUpgradePaymentView), // (New)

    // 3 - Dog grooming service
    // At DogGroomingService / DgBookingService
    CupertinoRoute(page: DGDogGroomingBookingView), // (New)
    CupertinoRoute(page: DGOpening),
    CupertinoRoute(page: DGPaymentView),

    // My Appointment
    // At DogGroomingService / DgAppointment
    CupertinoRoute(page: DGAppointmentDetailsView), // (New)
    CupertinoRoute(page: DGReportCardView), // (New)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: TamelyApi),
    LazySingleton(classType: CloudStorageService)
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
