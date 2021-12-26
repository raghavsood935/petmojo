import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/models/notification_response.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:stacked/stacked.dart';
import 'Notifications_viewmodel.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationViewModel>.reactive(
      viewModelBuilder: () => NotificationViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => model.isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: colors.primary,
              ),
            )
          : model.listOfNotification.isEmpty
              ? Center(
                  child: AppText.body1Bold(
                    "No new notifications",
                    color: colors.primary,
                  ),
                )
              : ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 20),
                  itemCount: model.listOfNotification.length,
                  itemBuilder: (builder, index) =>
                      NotificationTile(model.listOfNotification[index]),
                  separatorBuilder: (context, index) => spacedDividerTiny,
                ),
    );
  }
}

Widget NotificationTile(NotificationResponse notification) {
  return ListTile(
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network(
        notification.notificationDataResponse!.image ?? emptyProfileImgUrl,
        height: 50,
        width: 50,
        fit: BoxFit.cover,
      ),
    ),
    title: notification.senderUserResponse!.isNotEmpty
        ? AppText.body1Bold(
            notification.senderUserResponse!.first.username ?? "-")
        : AppText.body1Bold(
            notification.senderAnimalResponse!.first.username ?? "-"),
    subtitle: notificationType(notification),
    trailing: AppText.tiny(
      GlobalMethods.utcToLocalTrailing(notification.date ?? ""),
      textAlign: TextAlign.center,
    ),
  );
}

Widget notificationType(NotificationResponse notification) {
  if (notification.notificationType == "like") {
    return AppText.caption("Liked your post");
  } else if (notification.notificationType == "comment") {
    return AppText.caption(
        "Commented to your post \n ${notification.notificationDataResponse!.message ?? ""}");
  } else {
    return AppText.caption("-");
  }
}
