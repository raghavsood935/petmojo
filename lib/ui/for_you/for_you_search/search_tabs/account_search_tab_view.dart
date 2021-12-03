import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/ui/for_you/for_you_search/search_tabs/account_search_tab_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/widgets/app_text.dart';

class AccountSearchTabView extends StatefulWidget {
  List<ProfileForYouResponse> listOfProfile = [];

  AccountSearchTabView({Key? key, required this.listOfProfile})
      : super(key: key);

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
            itemCount: widget.listOfProfile.length,
            itemBuilder: (context, index) => listItem(
              index,
              widget.listOfProfile[index],
            ),
          )
        ],
      ),
    );
  }
}

Widget listItem(int index, ProfileForYouResponse profile) {
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
          backgroundImage: NetworkImage(profile.avatar ?? emptyProfileImgUrl),
        ),
      ),
    ),
    title: AppText.body1(profile.username ?? ""),
    subtitle: AppText.caption(profile.fullName ?? ""),
    trailing: Image.asset(
      crossImgPath,
      height: 12,
      width: 12,
    ),
  );
}
