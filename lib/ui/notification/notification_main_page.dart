import 'package:flutter/material.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/ui/notification/notification/notifications.dart';
import 'package:tamely/ui/notification/requests/requests_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class NotificationMainView extends StatelessWidget {
  NotificationMainView({Key? key, required this.haveAnyRequests})
      : super(key: key);

  bool haveAnyRequests = false;

  List<Widget> _tabs = [Notifications(), RequestsView()];

  final _tamelyApi = locator<TamelyApi>();
  final _sharedPrefService = locator<SharedPreferencesService>();

  Future<bool> back(BuildContext context) async {
    _tamelyApi.marAsReadListOfNotification(
        _sharedPrefService.getCurrentProfile().isHuman,
        petToken: _sharedPrefService.getCurrentProfile().petToken);
    Navigator.pop(context);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => back(context),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colors.white,
            title: AppText.titleBold("Notification"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: colors.black,
              ),
              onPressed: () => back(context),
            ),
            bottom: TabBar(tabs: [
              Tab(
                child: AppText.body1("Notifications"),
              ),
              Tab(
                child: haveAnyRequests
                    ? Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          AppText.body1("Requests"),
                          horizontalSpaceSmall,
                          Image.asset(
                            animalFootPrintImgPath,
                            height: 15,
                            width: 15,
                          ),
                        ],
                      )
                    : AppText.body1("Requests"),
              )
            ]),
          ),
          body: TabBarView(children: _tabs),
        ),
      ),
    );
  }
}
