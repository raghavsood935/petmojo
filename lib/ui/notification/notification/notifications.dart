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
                      NotificationTile(model.listOfNotification[index], model),
                  separatorBuilder: (context, index) => spacedDividerTiny,
                ),
    );
  }
}

Widget NotificationTile(
    NotificationResponse notification, NotificationViewModel model) {
  print("Here");
  if (notification.notificationType?.substring(0, 7) == "SERVICE") {
    return (ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: notification.notificationDataResponse?.icon == "OFFER"
              ? Image.asset(
                  "assets/images/offer.png",
                  width: 40,
                  height: 40,
                )
              : Image.asset(
                  "assets/images/jumping_dog.png",
                  width: 40,
                  height: 40,
                ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.body(notification.notificationDataResponse?.body ?? ""),
            notification.notificationDataResponse?.actionOnCTA == "PHONECALL"
                ? OutlinedButton(
                    onPressed: () {
                      model.onNotificationPressed(notification);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.phone,
                          size: 20,
                          color: Color(0xff168C22),
                        ),
                        horizontalSpaceSmall,
                        AppText.body1Bold(
                          notification.notificationDataResponse?.textOnCTA ??
                              "View",
                          color: Color(0xff168C22),
                        ),
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xff168C22)),
                        minimumSize: Size(10, 10),
                        backgroundColor: Color.fromARGB(255, 221, 236, 223),
                        primary: colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        // elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        shadowColor: Colors.grey),
                  )
                : TextButton(
                    onPressed: () {
                      model.onNotificationPressed(notification);
                    },
                    child: AppText.body1Bold(
                      notification.notificationDataResponse?.textOnCTA ??
                          "View",
                      color: colors.white,
                    ),
                    style: TextButton.styleFrom(
                        minimumSize: Size(10, 10),
                        backgroundColor: Color(0xffF696B1),
                        primary: colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        shadowColor: Colors.grey),
                  ),
          ],
        )));
  }
  // TODO : Remove this else part.
  // else {
  //   return (ListTile(
  //     leading: ClipRRect(
  //       borderRadius: BorderRadius.circular(5),
  //       child: Image.network(
  //         notification.notificationDataResponse!.image ?? emptyProfileImgUrl,
  //         height: 50,
  //         width: 50,
  //         fit: BoxFit.cover,
  //       ),
  //     ),
  //   ));
  // }
  print(notification.notificationType?.substring(0, 7));
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
