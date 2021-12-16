import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/models/notification_response.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/styles.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_request_button.dart';
import 'package:tamely/widgets/notification_app_bar.dart';
import 'package:stacked/stacked.dart';
import 'Notifications_viewmodel.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationViewModel>.reactive(
      viewModelBuilder: () => NotificationViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: colors.white,
          title: AppText.titleBold("Notifications"),
          centerTitle: true,
          leading: IconButton(
            padding: const EdgeInsets.all(0),
            icon: Icon(
              Icons.arrow_back,
              color: colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: model.isLoading
              ? Center(
                  child: CircularProgressIndicator(
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
                  // {
                  // return Column(
                  //   children: [
                  //     Card(
                  //       elevation: 0,
                  //       child: ListTile(
                  //         leading: CustomCircularAvatar(
                  //           radius: 20.0,
                  //           imgPath: "${notifications['userimg']}",
                  //         ),
                  //         title: RichText(
                  //           text: TextSpan(
                  //             style: DefaultTextStyle.of(context).style,
                  //             children: [
                  //               TextSpan(
                  //                 text: "${notifications['username']}",
                  //                 style: captionStyle.copyWith(
                  //                     color: colors.primary),
                  //               ),
                  //               TextSpan(
                  //                 text: "${notifications['content']}",
                  //                 style: captionStyle.copyWith(
                  //                     color: Colors.black),
                  //               ),
                  //               TextSpan(
                  //                 text: "${notifications['comment']}",
                  //                 style: captionStyle.copyWith(
                  //                     color: Colors.black),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         trailing:
                  //             Image.network("${notifications['postimg']}"),
                  //       ),
                  //     ),
                  //     Card(
                  //       elevation: 0,
                  //       child: Container(
                  //         height: MediaQuery.of(context).size.height * 0.10,
                  //         child: Row(
                  //           children: [
                  //             Expanded(
                  //               flex: 5,
                  //               child: Container(
                  //                 alignment: Alignment.topLeft,
                  //                 child: Column(
                  //                   children: [
                  //                     Expanded(
                  //                       child: ListTile(
                  //                         leading: CustomCircularAvatar(
                  //                           radius: 20.0,
                  //                           imgPath:
                  //                               "${notifications['userimg']}",
                  //                         ),
                  //                         title: RichText(
                  //                           text: TextSpan(
                  //                             style:
                  //                                 DefaultTextStyle.of(context)
                  //                                     .style,
                  //                             children: [
                  //                               TextSpan(
                  //                                 text:
                  //                                     "${notifications['username']}",
                  //                                 style: captionStyle.copyWith(
                  //                                     color: colors.primary),
                  //                               ),
                  //                               TextSpan(
                  //                                 text:
                  //                                     "${notifications['follow']}",
                  //                                 style: captionStyle.copyWith(
                  //                                     color: Colors.black),
                  //                               ),
                  //                             ],
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     if (true) ...[
                  //                       ButtonBar(
                  //                         children: [
                  //                           FollowRequestBtn(
                  //                               initialState: true),
                  //                         ],
                  //                       ),
                  //                     ],
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // );
                  // },
                ),
        ),
        // child: Center(
        //   child: AppText.body1Bold("Under development"),
        // ),
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
