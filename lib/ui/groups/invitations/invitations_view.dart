import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/invitations/invitations_view_model.dart';
import 'package:tamely/widgets/app_text.dart';

class InvitationsTabView extends StatefulWidget {
  const InvitationsTabView({Key? key}) : super(key: key);

  @override
  _InvitationsTabViewState createState() => _InvitationsTabViewState();
}

class _InvitationsTabViewState extends State<InvitationsTabView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InvitationsTabViewModel>.reactive(
      viewModelBuilder: () => InvitationsTabViewModel(),
      builder: (context, model, child) => model.listOfInvitations.isEmpty
          ? Center(
              child: AppText.caption("No Invitation yet"),
            )
          : Container(),
    );
  }
}
