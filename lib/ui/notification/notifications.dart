import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/styles.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_request_button.dart';
import 'package:tamely/widgets/notification_app_bar.dart';
import 'package:stacked/stacked.dart';
import 'Notifications_viewmodel.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  List<Map> staticnotifications = UserNotification.notifications;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationViewModel>.reactive(
      viewModelBuilder: () => NotificationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: NotificationAppBar(),
        body: SafeArea(
            child: ListView.builder(
                itemCount: staticnotifications.length,
                itemBuilder: (builder, index) {
                  Map notifications = staticnotifications[index];
                  return Column(
                    children: [
                      Card(
                        elevation: 0,
                        child: ListTile(
                          leading: CustomCircularAvatar(
                            radius: 20.0,
                            imgPath: "${notifications['userimg']}",
                          ),
                          title: RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                TextSpan(
                                  text: "${notifications['username']}",
                                  style: captionStyle.copyWith(
                                      color: colors.primary),
                                ),
                                TextSpan(
                                  text: "${notifications['content']}",
                                  style: captionStyle.copyWith(
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: "${notifications['comment']}",
                                  style: captionStyle.copyWith(
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          trailing:
                              Image.network("${notifications['postimg']}"),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.10,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ListTile(
                                          leading: CustomCircularAvatar(
                                            radius: 20.0,
                                            imgPath:
                                                "${notifications['userimg']}",
                                          ),
                                          title: RichText(
                                            text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "${notifications['username']}",
                                                  style: captionStyle.copyWith(
                                                      color: colors.primary),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${notifications['follow']}",
                                                  style: captionStyle.copyWith(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (true) ...[
                                        ButtonBar(
                                          children: [
                                            FollowRequestBtn(
                                                initialState: true),
                                          ],
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                })),
      ),
    );
  }
}
