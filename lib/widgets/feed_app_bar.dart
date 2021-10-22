import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kubelite/ui/dashboard/dashboard_viewmodel.dart';
import 'package:kubelite/widgets/profile_selection.dart';
import 'package:stacked/stacked.dart';

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
      title: ProfileSelectionAppBar(),
      actions: <Widget>[
        IconButton(
          onPressed: model.onNotificationPressed,
          icon: SvgPicture.asset(
            "assets/images/notification.svg",
          ),
        ),
        IconButton(
          onPressed: model.onChatPressed,
          icon: SvgPicture.asset(
            "assets/images/chat.svg",
          ),
        ),
      ],
      elevation: 1.5,
      brightness: Brightness.light,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
