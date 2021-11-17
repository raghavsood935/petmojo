import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/ui/for_you/for_you_search/search_tabs/all_search_tab_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/widgets/app_text.dart';

class AllSerachTabView extends StatefulWidget {
  const AllSerachTabView({Key? key}) : super(key: key);

  @override
  _AllSerachTabViewState createState() => _AllSerachTabViewState();
}

class _AllSerachTabViewState extends State<AllSerachTabView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllSearchTabViewModel>.reactive(
      viewModelBuilder: () => AllSearchTabViewModel(),
      builder: (context, model, child) => ListView(
        padding: EdgeInsets.all(8),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppText.body1("Result for All"),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: model.listOfAccounts.length,
            itemBuilder: (context, index) => listItem(
              index,
              model,
            ),
          )
        ],
      ),
    );
  }
}

Widget listItem(int index, AllSearchTabViewModel viewModel) {
  AccountProfileModel model = viewModel.listOfAccounts[index];
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
    leading: CircleAvatar(
      backgroundColor: colors.primary,
      radius: 30,
      child: CircleAvatar(
        backgroundColor: colors.white,
        radius: 27,
        child: CircleAvatar(
          backgroundColor: colors.lightBackgroundColor,
          radius: 26,
          backgroundImage: NetworkImage(model.profileImgUrl),
        ),
      ),
    ),
    title: AppText.body1(model.profilename),
    subtitle: AppText.caption(model.username),
    trailing: GestureDetector(
      child: Image.asset(
        crossImgPath,
        height: 12,
        width: 12,
      ),
      onTap: () => viewModel.removeAccountFromList(index),
    ),
  );
}
