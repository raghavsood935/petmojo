import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/community/community_view.dart';
import 'package:tamely/ui/dashboard/dashboard_viewmodel.dart';
import 'package:tamely/ui/feed/feed_view.dart';
import 'package:tamely/ui/for_you/for_you_view.dart';
import 'package:tamely/ui/profilepage/profile_view.dart';
import 'package:tamely/ui/services/services_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/feed_app_bar.dart';
import 'package:tamely/widgets/follow_static_btn.dart';
import 'package:tamely/widgets/main_btn.dart';
import 'package:tamely/widgets/profile_selection_bottom_navbar.dart';

class Dashboard extends StatefulWidget {
  Dashboard({
    Key? key,
    required this.initialPageState,
    required this.isNeedToUpdateProfile,
    required this.isHuman,
    required this.petID,
    required this.petToken,
    required this.initialState,
    this.checkUpdate,
  }) : super(key: key);

  final int initialState;

  final bool isHuman;
  final bool isNeedToUpdateProfile;
  final String petID;
  final String petToken;
  final int initialPageState;
  final bool? checkUpdate;

  @override
  State<Dashboard> createState() => _DashboardState(initialPageState);
}

class _DashboardState extends State<Dashboard> {
  int index = 0;

  _DashboardState(int i) {
    index = i;
  }

  List<Widget> _buildScreens(BuildContext context, DashboardViewModel model) {
    return [
      ServicesView(
        menuScreenContext: context,
        hideStatus: model.hideNavBar,
        onScreenHideButtonPressed: () {
          model.hideNavBar = !model.hideNavBar;
        },
      ),
      CommunityView(
        menuScreenContext: context,
        hideStatus: model.hideNavBar,
        onScreenHideButtonPressed: () {
          model.hideNavBar = !model.hideNavBar;
        },
      ),
      ForYouView(
        menuScreenContext: context,
        hideStatus: model.hideNavBar,
        onScreenHideButtonPressed: () {
          model.hideNavBar = !model.hideNavBar;
        },
      ),
      FeedView(
        menuScreenContext: context,
        hideStatus: model.hideNavBar,
        onScreenHideButtonPressed: () {
          model.hideNavBar = !model.hideNavBar;
        },
      ),
      ProfileView(
        menuScreenContext: context,
        hideStatus: model.hideNavBar,
        onScreenHideButtonPressed: () {
          model.hideNavBar = !model.hideNavBar;
        },
        isInspectView: false,
      ),
    ];
  }

  List<Widget> _buildDrawerScreens(
      BuildContext context, DashboardViewModel model) {
    return [
      IconButton(
        splashRadius: 5,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.clear,
          color: colors.primary,
          size: 30,
        ),
      ),
      verticalSpaceMedium,
      Row(
        children: [
          CustomCircularAvatar(
            radius: 30,
            imgPath: model.avatarUrl,
            isHuman: model.isHuman,
          ),
          horizontalSpaceRegular,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.body1(model.profileName),
              verticalSpaceTiny,
              AppText.caption(model.userName)
            ],
          )
        ],
      ),
      Divider(
        color: colors.kcMediumGreyColor,
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            DrawerWidget(
                title: walletTitle,
                subTitle: walletSubTitle,
                iconUrl: walletIcon,
                onTap: model.onWalletPressed),
            DrawerWidget(
                title: bookingTitle,
                subTitle: bookingSubTitle,
                iconUrl: bookingIcon,
                onTap: model.onMyBookingsPressed),
            // DrawerWidget(
            //     title: settingsTitle,
            //     subTitle: settingsSubTitle,
            //     iconUrl: settingsIcon,
            //     onTap: model.onSettingsPressed),
            DrawerWidget(
                title: bookmarksTitle,
                subTitle: bookmarksSubTitle,
                iconUrl: bookmarksIcon,
                onTap: model.onBookmarksPressed),
          ],
        ),
      ),
      Spacer(),
      Divider(
        color: colors.kcMediumGreyColor,
      ),
      DrawerWidget(
          title: feedbackTitle,
          subTitle: feedbackSubTitle,
          iconUrl: feedbackIcon,
          onTap: model.onFeedbackPressed),
      DrawerWidget(
          title: helpTitle,
          subTitle: helpSubTitle,
          iconUrl: helpIcon,
          onTap: model.onHelpPressed),
      DrawerWidget(
          title: logoutTitle,
          subTitle: logoutSubTitle,
          iconUrl: logoutIcon,
          onTap: model.onLogOutPressed),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/images/home.svg",
          color: colors.primary,
        ),
        inactiveIcon: SvgPicture.asset(
          "assets/images/home.svg",
        ),
        title: "Feed",
        activeColorPrimary: colors.primary,
        inactiveColorPrimary: colors.kcLightGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/images/community.svg",
          color: colors.primary,
        ),
        inactiveIcon: SvgPicture.asset(
          "assets/images/community.svg",
        ),
        title: ("Community"),
        activeColorPrimary: colors.primary,
        inactiveColorPrimary: colors.kcLightGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/images/explore.svg",
          color: colors.primary,
        ),
        inactiveIcon: SvgPicture.asset(
          "assets/images/explore.svg",
        ),
        title: ("For you"),
        activeColorPrimary: colors.primary,
        inactiveColorPrimary: colors.kcLightGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/images/services.svg",
          color: colors.primary,
        ),
        inactiveIcon: SvgPicture.asset(
          "assets/images/services.svg",
        ),
        title: ("Services"),
        activeColorPrimary: colors.primary,
        inactiveColorPrimary: colors.kcLightGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/images/community.svg",
          color: colors.primary,
        ),
        inactiveIcon: SvgPicture.asset(
          "assets/images/community.svg",
        ),
        title: ("Profile"),
        activeColorPrimary: colors.primary,
        inactiveColorPrimary: colors.kcLightGreyColor,
      ),
    ];
  }

  List<BottomNavigationBarItem> _getBottomNavBarItems(model) {
    return [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, size:24,),
      activeIcon: Icon(Icons.home, size:24, color: colors.primary,),
      label: "Home",
      backgroundColor: colors.white,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people, size:24,),
      activeIcon: Icon(Icons.people, size:24,
        color: colors.primary,
      ),
      label: "Community",
      backgroundColor: colors.white,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.explore, size:24,),
      activeIcon: Icon(Icons.explore, size:24,
        color: colors.primary,
      ),
      label: "For you",
      backgroundColor: colors.white,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.calendar_today, size:24,),
      activeIcon: Icon(Icons.calendar_today, size:24,
        color: colors.primary,
      ),
      label: "Bookings",
      backgroundColor: colors.white,
    ),
    BottomNavigationBarItem(
      icon: ProfileSelectionBottomNavbar(
        listOfProfiles: model.listOfProfiles,
        initialState: model.initialState,
      ),
      label: "Profile",
      backgroundColor: colors.white,
    ),
  ];
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      onModelReady: (model) => model
          .init(
        context,
        widget.initialState,
        widget.isNeedToUpdateProfile,
        widget.isHuman,
        widget.petID,
        widget.petToken,
        widget.initialPageState,
        widget.checkUpdate,
      )
          .whenComplete(() {
        setState(() {});
      }),
      builder: (context, model, child) => WillPopScope(
        onWillPop: () => model.onBackPressed(),
        child: model.isLoading
            ? Scaffold(
                body: Visibility(
                  visible: model.isErrorInLoading,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppText.body1Bold("Something went wrong!"),
                        verticalSpaceSmall,
                        MainButtonWidget(
                            onMainButtonTapped: () => model.init(
                                  context,
                                  widget.initialState,
                                  widget.isNeedToUpdateProfile,
                                  widget.isHuman,
                                  widget.petID,
                                  widget.petToken,
                                  widget.initialPageState,
                                  widget.checkUpdate,
                                ),
                            mainButtonTitle: "RETRY"),
                      ],
                    ),
                  ),
                ),
              )
            : Scaffold(
                appBar: FeedAppBar(),
                drawer: Drawer(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: _buildDrawerScreens(context, model)),
                  ),
                ),
                body: _buildScreens(context, model)[index],
                bottomNavigationBar: BottomNavigationBar(
                  elevation: 8.0,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: colors.white,
                  // selectedLabelStyle: TextStyle(color: colors.primary),
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  selectedItemColor: colors.primary,
                  unselectedItemColor: colors.kcMediumGreyColor,
                  unselectedLabelStyle:
                      TextStyle(color: colors.kcMediumGreyColor, fontSize: 12),
                  items: _getBottomNavBarItems(model),
                  currentIndex: index,
                  onTap: (int x) {
                    setState(() {
                      index = x;
                    });
                  },
                ),
                backgroundColor: colors.white,
                // body: PersistentTabView.custom(
                //   context,
                //   controller: model.controller,
                //   screens: _buildScreens(context, model),
                //   confineInSafeArea: true,
                //   itemCount: 5,
                //   handleAndroidBackButtonPress: true,
                //   stateManagement: true,
                //   hideNavigationBar: model.hideNavBar,
                //   screenTransitionAnimation: ScreenTransitionAnimation(
                //     animateTabTransition: true,
                //     curve: Curves.easeIn,
                //     duration: Duration(milliseconds: 100),
                //   ),
                //   customWidget: CustomNavBarWidget(
                //     items: _navBarsItems(),
                //     onItemSelected: (index) {
                //       model.controllerIndex(index);
                //     },
                //     selectedIndex: model.controller.index,
                //   ),
                // ),
              ),
      ),
    );
  }
}

// ----------------------------------------- Custom Style ----------------------------------------- //

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      height: kBottomNavigationBarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? (item.activeColorSecondary == null
                          ? item.activeColorPrimary
                          : item.activeColorSecondary)
                      : item.inactiveColorPrimary == null
                          ? item.activeColorPrimary
                          : item.inactiveColorPrimary),
              child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                  child: Text(
                item.title ?? "",
                style: TextStyle(
                    color: isSelected
                        ? (item.activeColorSecondary == null
                            ? item.activeColorPrimary
                            : item.activeColorSecondary)
                        : item.inactiveColorPrimary,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0),
              )),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  this.onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class DrawerWidget extends ViewModelWidget<DashboardViewModel> {
  final String title;
  final String subTitle;
  final String iconUrl;
  final VoidCallback onTap;

  DrawerWidget(
      {required this.title,
      required this.subTitle,
      required this.iconUrl,
      required this.onTap});

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    iconUrl,
                    height: 20,
                    width: 20,
                  ),
                  horizontalSpaceSmall,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body(
                        title,
                        color: colors.kcPrimaryTextColor,
                      ),
                      verticalSpaceTiny,
                      AppText.caption(subTitle),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: colors.kcMediumGreyColor,
            ),
          ],
        ),
      ),
    );
  }
}
