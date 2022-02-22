import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/ui/for_you/for_you_search/for_you_tab_search_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/search_text_field.dart';

class ForYouTabSearchView extends StatefulWidget {
  const ForYouTabSearchView({Key? key}) : super(key: key);

  @override
  _ForYouTabSearchViewState createState() => _ForYouTabSearchViewState();
}

class _ForYouTabSearchViewState extends State<ForYouTabSearchView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForYouTabSearchViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   elevation: 0,
          //   titleSpacing: 0,
          //   automaticallyImplyLeading: false,
          //   title: Container(
          //       child: SearchTextField(
          //     controller: model.searchTC,
          //     hint: "Search for profiles,keywords etc.",
          //     onChange: model.onSearchChange,
          //   )),
          //   leading: IconButton(
          //     icon: Icon(
          //       Icons.arrow_back,
          //       color: colors.black,
          //     ),
          //     onPressed: model.goBack,
          //   ),
          //   actions: <Widget>[
          //     TextButton(
          //       onPressed: model.clearSearchText,
          //       child: AppText.body1(
          //         "Cancel",
          //         color: colors.primary,
          //       ),
          //     ),
          //   ],
          // ),
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: colors.black,
                      ),
                      onPressed: model.goBack,
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: SearchTextField(
                      controller: model.searchTC,
                      hint: "Search for profiles,keywords etc.",
                      onChange: (value) => model.onSearchChange(value, false),
                    ),
                  ),
                ],
              ),
              model.listOfProfiles.isEmpty
                  ? Visibility(
                      visible: model.searchTC.text.isNotEmpty,
                      child: Visibility(
                        visible: !model.isLoading,
                        child: Center(
                          child: AppText.body1Bold(
                            "No result found",
                            color: colors.primary,
                          ),
                        ),
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: model.listOfProfiles.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () => GlobalMethods.checkProfileType(
                                model.listOfProfiles[index].type ?? "")
                            ? model.inspectProfile(
                                context, model.listOfProfiles[index].Id ?? "")
                            : model.inspectAnimalProfile(
                                context,
                                model.listOfProfiles[index].Id ?? "",
                                model.listOfProfiles[index].token ?? ""),
                        child: listItem(model.listOfProfiles[index]),
                      ),
                    ),
              verticalSpaceRegular,
              Visibility(
                visible: model.isLoading,
                child: CircularProgressIndicator(
                  color: colors.primary,
                ),
              ),
              verticalSpaceRegular,
              Visibility(
                visible: model.searchTC.text.isNotEmpty,
                child: Visibility(
                  visible: model.listOfProfiles.isNotEmpty,
                  child: Visibility(
                    visible: !model.isEndOfList,
                    child: Visibility(
                      visible: !model.isLoading,
                      child: GestureDetector(
                        onTap: () =>
                            model.onSearchChange(model.searchTC.text, true),
                        child: AppText.body1Bold(
                          "See more profiles",
                          color: colors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      )),
      // builder: (context, model, child) => DefaultTabController(
      //   length: model.tabs.length,
      //   child: Scaffold(
      //     appBar: AppBar(
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //       automaticallyImplyLeading: false,
      //       title: Container(
      //           child: SearchTextField(
      //         controller: model.searchTC,
      //         hint: "Search for profiles,keywords etc.",
      //         onChange: model.onSearchChange,
      //       )),
      //       actions: <Widget>[
      //         TextButton(
      //           onPressed: model.clearSearchText,
      //           child: AppText.body1(
      //             "Cancel",
      //             color: colors.primary,
      //           ),
      //         ),
      //       ],
      //       bottom: TabBar(
      //         tabs: model.tabTitles,
      //       ),
      //     ),
      //     // bottomSheet: TabBar(
      //     //   tabs: model.tabTitles,
      //     // ),
      //     body: TabBarView(
      //       children: model.tabs,
      //     ),
      //   ),
      // ),
      viewModelBuilder: () => ForYouTabSearchViewModel(),
    );
  }
}

Widget listItem(ProfileForYouResponse profile) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
    leading: CustomCircularAvatar(
      radius: 30,
      imgPath: profile.avatar ?? emptyProfileImgUrl,
      isHuman: GlobalMethods.checkProfileType(profile.type ?? ""),
    ),
    title: AppText.body1(profile.username ?? ""),
    subtitle: AppText.caption(profile.fullName ?? ""),
    trailing: Icon(
      Icons.arrow_forward_ios_rounded,
      size: 18,
      color: colors.black,
    ),
  );
}
