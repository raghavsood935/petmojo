import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/groups/invitations/invitations_view.dart';
import 'package:tamely/ui/groups/my_groups/my_groups_tab_view.dart';

class GroupsViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackbarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  int noOdInvitations = 0;

  List<Widget> _tabs = [
    MyGroupsTabView(),
    InvitationsTabView(),
  ];

  List<Tab> _tabTitles = [
    Tab(
      text: "My Groups",
    ),
    Tab(
      text: "Invitations",
    ),
  ];

  List<Widget> get tabs => _tabs;

  List<Tab> get tabTitles => _tabTitles;

  back() {
    _navigationService.back();
  }

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();

    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    notifyListeners();

    getInvitations();
  }

  createGroup() {
    _navigationService.navigateTo(Routes.createGroupFirstView);
  }

  searchGroup() {
    _navigationService.navigateTo(Routes.exploreGroupView);
  }

  Future getInvitations() async {
    var result =
        await _tamelyApi.showPendingInvitations(isHuman, petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      if (error.getErrorMessage() !=
          "Connection failed due to internet connection") {
        _snackbarService.showSnackbar(message: error.getErrorMessage());
      }
    } else if (result.data != null) {
      if (result.data!.success ?? false) {
        noOdInvitations = (result.data!.listOfInvitations ?? []).length;
        notifyListeners();
      }
    }
  }
}
