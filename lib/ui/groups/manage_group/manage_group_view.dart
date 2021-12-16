import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/manage_group/manage_group_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class ManageGroupView extends StatelessWidget {
  const ManageGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ManageGroupViewModel>.reactive(
      viewModelBuilder: () => ManageGroupViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: colors.black,
            ),
            onPressed: model.back,
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              title: AppText.caption(
                "Edit Group Info",
                color: colors.kcPrimaryTextColor,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              title: AppText.caption(
                "Members",
                color: colors.kcPrimaryTextColor,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              title: AppText.caption(
                "Location",
                color: colors.kcPrimaryTextColor,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              title: AppText.caption(
                "Delete Group",
                color: colors.red,
              ),
              leading: Icon(
                Icons.delete_outline_rounded,
                color: colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
