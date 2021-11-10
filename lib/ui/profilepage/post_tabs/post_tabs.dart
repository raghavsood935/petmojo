import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/util/ui_helpers.dart';

import 'mentions_post_tab.dart';
import 'my_posts_tab.dart';

class PostTab extends StatelessWidget {
  PostTab({Key? key}) : super(key: key);

  List<Widget> _tabs = [MyPostsTabView(), MentionsPostTabView()];
  List<Tab> _tabsTitle = [
    Tab(
      text: "My posts",
    ),
    Tab(
      text: "Mentions",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: TabBar(tabs: _tabsTitle),
          ),
          Container(
            height: double.maxFinite,
            // height: screenHeight(context),
            child: TabBarView(
              children: _tabs,
            ),
          )
        ],
      ),
    );

    // return Container(
    //   child: DefaultTabController(
    //     length: 2,
    //     child: Column(
    //       children: [
    //         Container(
    //           child: TabBar(tabs: _tabsTitle),
    //         ),
    //         Container(
    //           child: TabBarView(
    //             children: _tabs,
    //           ),
    //         )
    //       ],
    //       // appBar: TabBar(tabs: _tabsTitle),
    //       // body: TabBarView(
    //       //   children: _tabs,
    //       // ),
    //     ),
    //   ),
    // );
  }
}
