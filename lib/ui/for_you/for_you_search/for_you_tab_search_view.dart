import 'package:flutter/material.dart';
import 'package:kubelite/ui/for_you/for_you_search/for_you_tab_search_view_model.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

class ForYouTabSearchView extends StatefulWidget {
  const ForYouTabSearchView({Key? key}) : super(key: key);

  @override
  _ForYouTabSearchViewState createState() => _ForYouTabSearchViewState();
}

class _ForYouTabSearchViewState extends State<ForYouTabSearchView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForYouTabSearchViewModel>.reactive(
      builder: (context, model, child) => DefaultTabController(
        length: model.tabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Container(
              child: AppInputField(
                controller: model.searchTC,
                isSearchField: true,
                hint: "Search for profiles,keywords etc.",
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: model.clearSearchText,
                child: AppText.body1(
                  "Cancel",
                  color: colors.primary,
                ),
              ),
            ],
            bottom: TabBar(
              tabs: model.tabTitles,
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
      viewModelBuilder: () => ForYouTabSearchViewModel(),
    );
  }
}
