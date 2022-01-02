import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/Color.dart';

import 'groups_view_model.dart';

class GroupsView extends StatefulWidget {
  const GroupsView({Key? key}) : super(key: key);

  @override
  _GroupsViewState createState() => _GroupsViewState();
}

class _GroupsViewState extends State<GroupsView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GroupsViewModel>.reactive(
      viewModelBuilder: () => GroupsViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => DefaultTabController(
        length: model.tabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: AppText.body2("Groups"),
            leading: IconButton(
              onPressed: model.back,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: colors.black,
              ),
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: () => model.createGroup(),
                child: Image.asset(addImgPath),
              ),
              GestureDetector(
                onTap: () => model.searchGroup(),
                child: Image.asset(searchImgPath),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: AppText.body1("My Groups"),
                ),
                Tab(
                  child: model.noOdInvitations > 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText.body1("Invitations"),
                            horizontalSpaceSmall,
                            Image.asset(
                              animalFootPrintImgPath,
                              height: 15,
                              width: 15,
                            ),
                          ],
                        )
                      : AppText.body1("Invitations"),
                )
              ],
            ),
          ),
          // bottomSheet: TabBar(
          //   tabs: model.tabTitles,
          // ),
          body: TabBarView(
            children: model.tabs,
          ),
        ),
      ),
    );
  }
}
