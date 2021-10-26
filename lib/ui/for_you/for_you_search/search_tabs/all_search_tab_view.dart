import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubelite/models/profile_account_model.dart';
import 'package:kubelite/ui/for_you/for_you_search/search_tabs/all_search_tab_view_model.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

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
    contentPadding: EdgeInsets.zero,
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
    trailing: IconButton(
      icon: Icon(Icons.cancel_outlined),
      onPressed: () => viewModel.removeAccountFromList(index),
    ),
  );
}
