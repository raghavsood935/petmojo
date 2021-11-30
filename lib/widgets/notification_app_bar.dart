import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:stacked/stacked.dart';
import 'package:tamely/ui/notification/Notifications_viewmodel.dart';

class NotificationAppBar extends ViewModelWidget<NotificationViewModel>
    implements PreferredSizeWidget {
  NotificationAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, NotificationViewModel model) {
    return SafeArea(
      child: Material(
        elevation: 5.0,
        child: Container(
          height: kToolbarHeight,
          child: Column(
            children: [
              Container(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pop(context)),
                    Spacer(),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
