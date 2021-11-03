import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kubelite/ui/community/community_view.dart';
import 'package:kubelite/ui/dashboard/dashboard_viewmodel.dart';
import 'package:kubelite/ui/feed/feed_view.dart';
import 'package:kubelite/ui/for_you/for_you_view.dart';
import 'package:kubelite/ui/home/home_view.dart';
import 'package:kubelite/ui/profilepage/profile_view.dart';
import 'package:kubelite/ui/services/services_view.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/feed_app_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:stacked/stacked.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  List<Widget> _buildScreens(BuildContext context, DashboardViewModel model) {
    return [
      FeedView(
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
      ServicesView(
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
      ),
    ];
  }

  List<Widget> _buildDrawerScreens(
      BuildContext context, DashboardViewModel model) {
    return [
      Icon(
        Icons.clear,
        color: colors.primary,
        size: 30,
      ),
      verticalSpaceMedium,
      Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: colors.black,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: colors.lightBackgroundColor,
              child: CircleAvatar(
                backgroundImage: NetworkImage(model.productImage),
                backgroundColor: Colors.transparent,
                radius: 27,
              ),
            ),
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
                onTap: model.onWalletPressed),
            DrawerWidget(
                title: settingsTitle,
                subTitle: settingsSubTitle,
                iconUrl: settingsIcon,
                onTap: model.onWalletPressed),
            DrawerWidget(
                title: bookmarksTitle,
                subTitle: bookmarksSubTitle,
                iconUrl: bookmarksIcon,
                onTap: model.onWalletPressed),
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
          onTap: model.onWalletPressed),
      DrawerWidget(
          title: helpTitle,
          subTitle: helpSubTitle,
          iconUrl: helpIcon,
          onTap: model.onWalletPressed),
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

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
        viewModelBuilder: () => DashboardViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: FeedAppBar(),
              drawer: Drawer(
                child: SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: _buildDrawerScreens(context, model)),
                )),
              ),
              body: PersistentTabView.custom(
                context,
                controller: model.controller,
                screens: _buildScreens(context, model),
                confineInSafeArea: true,
                itemCount: 5,
                handleAndroidBackButtonPress: true,
                stateManagement: true,
                hideNavigationBar: model.hideNavBar,
                screenTransitionAnimation: ScreenTransitionAnimation(
                  animateTabTransition: true,
                  curve: Curves.easeIn,
                  duration: Duration(milliseconds: 100),
                ),
                customWidget: CustomNavBarWidget(
                  items: _navBarsItems(),
                  onItemSelected: (index) {
                    model.controllerIndex(index);
                  },
                  selectedIndex: model.controller.index,
                ),
              ),
            ));
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
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
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
        ),
        Divider(
          color: colors.kcMediumGreyColor,
        ),
      ],
    );
  }
}
