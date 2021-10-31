import 'package:flutter/material.dart';
import 'package:kubelite/models/profile_account_model.dart';
import 'package:kubelite/ui/for_you/for_you_search/search_tabs/account_search_tab_view_model.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/ImageConstant.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

class AccountSearchTabView extends StatefulWidget {
  const AccountSearchTabView({Key? key}) : super(key: key);

  @override
  _AccountSearchTabViewState createState() => _AccountSearchTabViewState();
}

class _AccountSearchTabViewState extends State<AccountSearchTabView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AccountSearchTabViewModel>.reactive(
      viewModelBuilder: () => AccountSearchTabViewModel(),
      builder: (context, model, child) => ListView(
        padding: EdgeInsets.all(8),
        children: [
          AppText.body1("Result for Account"),
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

Widget listItem(int index, AccountSearchTabViewModel viewModel) {
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
