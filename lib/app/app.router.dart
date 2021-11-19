// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../models/application_models.dart';
import '../ui/community/community_main_view/community_main_view.dart';
import '../ui/community/first_time_views/community_choose_interests/community_choose_interests_view.dart';
import '../ui/dashboard/dashboard.dart';
import '../ui/for_you/for_you_search/for_you_tab_search_view.dart';
import '../ui/forgotpassword/forgotpassword_view.dart';
import '../ui/forgotpassword/new_password_view.dart';
import '../ui/groups/create_group/create_group_view.dart';
import '../ui/groups/group_info/group_info_view.dart';
import '../ui/groups/groups_view.dart';
import '../ui/login/login_view.dart';
import '../ui/onboarding/onboarding_view.dart';
import '../ui/otp/confirm_otp_view.dart';
import '../ui/post/camera_screen.dart';
import '../ui/profile/profile_create_view.dart';
import '../ui/profilepage/animal_profile/animal_profile_view.dart';
import '../ui/profilepage/animal_profile/basic_info/basic_info_view.dart';
import '../ui/profilepage/completed_profile/add_details_profile_view.dart';
import '../ui/profilepage/completed_profile/follow_people_action_view.dart';
import '../ui/profilepage/create_animal_profile/create_animal_page_viewe.dart';
import '../ui/signup/signup_view.dart';
import '../ui/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String onBoardingView = '/on-boarding-view';
  static const String loginView = '/login-view';
  static const String dashboard = '/Dashboard';
  static const String signUpView = '/sign-up-view';
  static const String confirmOTPView = '/confirm-ot-pView';
  static const String forgotPasswordView = '/forgot-password-view';
  static const String newPasswordView = '/new-password-view';
  static const String profileCreateView = '/profile-create-view';
  static const String addDetailsProfileView = '/add-details-profile-view';
  static const String followPeopleProfileActionView =
      '/follow-people-profile-action-view';
  static const String createAnimalPageView = '/create-animal-page-view';
  static const String forYouTabSearchView = '/for-you-tab-search-view';
  static const String communityChooseInterestView =
      '/community-choose-interest-view';
  static const String communityMainView = '/community-main-view';
  static const String animalProfileView = '/animal-profile-view';
  static const String animalBasicInfo = '/animal-basic-info';
  static const String groupsView = '/groups-view';
  static const String cameraScreen = '/camera-screen';
  static const String createGroupView = '/create-group-view';
  static const String groupInfoView = '/group-info-view';
  static const all = <String>{
    startupView,
    onBoardingView,
    loginView,
    dashboard,
    signUpView,
    confirmOTPView,
    forgotPasswordView,
    newPasswordView,
    profileCreateView,
    addDetailsProfileView,
    followPeopleProfileActionView,
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
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.dashboard, page: Dashboard),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.confirmOTPView, page: ConfirmOTPView),
    RouteDef(Routes.forgotPasswordView, page: ForgotPasswordView),
    RouteDef(Routes.newPasswordView, page: NewPasswordView),
    RouteDef(Routes.profileCreateView, page: ProfileCreateView),
    RouteDef(Routes.addDetailsProfileView, page: AddDetailsProfileView),
    RouteDef(Routes.followPeopleProfileActionView,
        page: FollowPeopleProfileActionView),
    RouteDef(Routes.createAnimalPageView, page: CreateAnimalPageView),
    RouteDef(Routes.forYouTabSearchView, page: ForYouTabSearchView),
    RouteDef(Routes.communityChooseInterestView,
        page: CommunityChooseInterestView),
    RouteDef(Routes.communityMainView, page: CommunityMainView),
    RouteDef(Routes.animalProfileView, page: AnimalProfileView),
    RouteDef(Routes.animalBasicInfo, page: AnimalBasicInfo),
    RouteDef(Routes.groupsView, page: GroupsView),
    RouteDef(Routes.cameraScreen, page: CameraScreen),
    RouteDef(Routes.createGroupView, page: CreateGroupView),
    RouteDef(Routes.groupInfoView, page: GroupInfoView),
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
    ProfileCreateView: (data) {
      var args = data.getArgs<ProfileCreateViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProfileCreateView(
          key: args.key,
          user: args.user,
          isEdit: args.isEdit,
          lastAvatarUrl: args.lastAvatarUrl,
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
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const FollowPeopleProfileActionView(),
        settings: data,
      );
    },
    CreateAnimalPageView: (data) {
      var args = data.getArgs<CreateAnimalPageViewArguments>(
        orElse: () => CreateAnimalPageViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateAnimalPageView(key: args.key),
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
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const AnimalProfileView(),
        settings: data,
      );
    },
    AnimalBasicInfo: (data) {
      var args = data.getArgs<AnimalBasicInfoArguments>(
        orElse: () => AnimalBasicInfoArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AnimalBasicInfo(key: args.key),
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
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

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

/// ProfileCreateView arguments holder class
class ProfileCreateViewArguments {
  final Key? key;
  final LocalUser user;
  final dynamic isEdit;
  final dynamic lastAvatarUrl;
  ProfileCreateViewArguments(
      {this.key, required this.user, this.isEdit, this.lastAvatarUrl});
}

/// AddDetailsProfileView arguments holder class
class AddDetailsProfileViewArguments {
  final Key? key;
  final String lastUrl;
  final String lastBio;
  AddDetailsProfileViewArguments(
      {this.key, required this.lastUrl, required this.lastBio});
}

/// CreateAnimalPageView arguments holder class
class CreateAnimalPageViewArguments {
  final Key? key;
  CreateAnimalPageViewArguments({this.key});
}

/// AnimalBasicInfo arguments holder class
class AnimalBasicInfoArguments {
  final Key? key;
  AnimalBasicInfoArguments({this.key});
}

/// CameraScreen arguments holder class
class CameraScreenArguments {
  final List<CameraDescription> cameras;
  CameraScreenArguments({required this.cameras});
}
