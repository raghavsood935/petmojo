import 'package:kubelite/api/api_service.dart';
import 'package:kubelite/api/firestore_api.dart';
import 'package:kubelite/services/authentication_service.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:kubelite/services/user_service.dart';
import 'package:kubelite/ui/forgotpassword/forgotpassword_view.dart';
import 'package:kubelite/ui/forgotpassword/new_password_view.dart';
import 'package:kubelite/ui/home/home_view.dart';
import 'package:kubelite/ui/login/login_view.dart';
import 'package:kubelite/ui/onboarding/onboarding_view.dart';
import 'package:kubelite/ui/otp/confirm_otp_view.dart';
import 'package:kubelite/ui/profile/profile_create_view.dart';
import 'package:kubelite/ui/singup/signup_view.dart';
import 'package:kubelite/ui/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: OnBoardingView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: SignUpView),
    CupertinoRoute(page: ConfirmOTPView),
    CupertinoRoute(page: ForgotPasswordView),
    CupertinoRoute(page: NewPasswordView),
    CupertinoRoute(page: ProfileCreateView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: FirebaseAuthenticationService),
    LazySingleton(classType: FirestoreApi),
    LazySingleton(classType: UserService),
    LazySingleton(classType: TamelyApi),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
