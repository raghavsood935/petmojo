import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/ui/camera/camera_screen.dart';
import 'package:tamely/ui/community/community_main_view/community_main_view.dart';
import 'package:tamely/ui/community/first_time_views/community_choose_interests/community_choose_interests_view.dart';
import 'package:tamely/ui/dashboard/dashboard.dart';
import 'package:tamely/ui/for_you/for_you_search/for_you_tab_search_view.dart';
import 'package:tamely/ui/forgotpassword/forgotpassword_view.dart';
import 'package:tamely/ui/forgotpassword/new_password_view.dart';
import 'package:tamely/ui/groups/groups_view.dart';
import 'package:tamely/ui/login/login_view.dart';
import 'package:tamely/ui/onboarding/onboarding_view.dart';
import 'package:tamely/ui/otp/confirm_otp_view.dart';
import 'package:tamely/ui/profile/profile_create_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/animal_profile_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/basic_info_view.dart';
import 'package:tamely/ui/profilepage/create_animal_profile/create_animal_page_viewe.dart';
import 'package:tamely/ui/signup/signup_view.dart';
import 'package:tamely/ui/startup/startup_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    CupertinoRoute(page: OnBoardingView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: Dashboard),
    CupertinoRoute(page: SignUpView),
    CupertinoRoute(page: ConfirmOTPView),
    CupertinoRoute(page: ForgotPasswordView),
    CupertinoRoute(page: NewPasswordView),
    CupertinoRoute(page: ProfileCreateView),
    CupertinoRoute(page: CreateAnimalPageView),
    CupertinoRoute(page: ForYouTabSearchView),
    CupertinoRoute(page: CommunityChooseInterestView),
    CupertinoRoute(page: CommunityMainView),
    CupertinoRoute(page: AnimalProfileView),
    CupertinoRoute(page: AnimalBasicInfo),
    CupertinoRoute(page: GroupsView),
    CupertinoRoute(page: CameraScreen),
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
