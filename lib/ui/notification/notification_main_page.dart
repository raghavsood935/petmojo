import 'package:flutter/material.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/ui/notification/notification/notifications.dart';
import 'package:tamely/ui/notification/requests/requests_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class NotificationMainView extends StatelessWidget {
  NotificationMainView({Key? key}) : super(key: key);

  List<Widget> _tabs = [Notifications(), RequestsView()];
  List<Tab> _tabsTitle = [
    Tab(
      text: "Notifications",
    ),
    Tab(
      text: "Requests",
    )
  ];

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
            bottom: TabBar(tabs: _tabsTitle),
          ),
          body: TabBarView(children: _tabs),
        ),
      ),
    );
  }
}
