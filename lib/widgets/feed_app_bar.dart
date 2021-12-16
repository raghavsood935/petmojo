import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/dashboard/dashboard_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/profile_selection.dart';

class FeedAppBar extends ViewModelWidget<DashboardViewModel>
    implements PreferredSizeWidget {
  FeedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, DashboardViewModel model) {
    return AppBar(
      leading: IconButton(
        padding: const EdgeInsets.all(0),
        icon: SvgPicture.asset(
          "assets/images/drawer.svg",
          height: 30,
          width: 30,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      title: ProfileSelectionAppBar(
        listOfProfiles: model.listOfProfiles,
        initialState: model.initialState,
      ),
      titleSpacing: 0,
      centerTitle: true,
      actions: <Widget>[
        Container(
          width: 50,
          height: 50,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: IconButton(
                  onPressed: model.onNotificationPressed,
                  icon: SvgPicture.asset(
                    "assets/images/notification.svg",
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Visibility(
                  visible: model.notificationCount > 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: colors.red,
                    child: AppText.tiny(
                      "${model.notificationCount}",
                      color: colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // IconButton(
        //   onPressed: model.onChatPressed,
        //   icon: SvgPicture.asset(
        //     "assets/images/chat.svg",
        //   ),
        // ),
      ],
      // elevation: 1.5,
      // brightness: Brightness.light,
      backgroundColor: Colors.white,
      backwardsCompatibility: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
