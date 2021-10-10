import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kubelite/ui/home/home_view.dart';
import 'package:kubelite/ui/profilepage/profile_view.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late PersistentTabController _controller;
  late bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      HomeView(
        menuScreenContext: context,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          setState(() {
            _hideNavBar = !_hideNavBar;
          });
        },
      ),
      HomeView(
        menuScreenContext: context,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          setState(() {
            _hideNavBar = !_hideNavBar;
          });
        },
      ),
      HomeView(
        menuScreenContext: context,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          setState(() {
            _hideNavBar = !_hideNavBar;
          });
        },
      ),
      HomeView(
        menuScreenContext: context,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          setState(() {
            _hideNavBar = !_hideNavBar;
          });
        },
      ),
      ProfileView(
        menuScreenContext: context,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          setState(() {
            _hideNavBar = !_hideNavBar;
          });
        },
      ),
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
        title: "Home",
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
        title: ("Explore"),
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
    return Scaffold(
      appBar: AppBar(title: Text(APP_NAME)),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
            ],
          ),
        ),
      ),
      body: PersistentTabView.custom(
        context,
        controller: _controller,
        screens: _buildScreens(),
        confineInSafeArea: true,
        itemCount: 5,
        handleAndroidBackButtonPress: true,
        stateManagement: true,
        hideNavigationBar: _hideNavBar,
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        customWidget: CustomNavBarWidget(
          items: _navBarsItems(),
          onItemSelected: (index) {
            setState(() {
              _controller.index = index;
            });
          },
          selectedIndex: _controller.index,
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
