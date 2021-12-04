import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/params/show_people_to_follow_body.dart';
import 'package:tamely/models/profile_model_response.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/profilepage/completed_profile/follow_people_action_viewmodel.dart';

class ListOfFollowingsViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();

  String _id = "";

  int _counter = 0;
  bool _isLoading = true;

  List<CustomProfile> _listOfProfileModel = [];

  List<CustomProfile> get listOfProfileModel => _listOfProfileModel;

  bool get isLoading => _isLoading;

  Future init(String id) async {
    _id = id;
    notifyListeners();
    await getProfilesList();
  }

  Future getProfilesList() async {
    print("COUNTER VALUE $_counter");
    _isLoading = true;
    _listOfProfileModel.clear();
    notifyListeners();

    ShowPeopleToFollowBody body = ShowPeopleToFollowBody(_counter);
    var result = await _tamelyApi.showPeoplesToFollow(body);

    if (result.data != null) {
      if (result.data!.listOfProfiles != null) {
        for (ProfileResponse response in result.data!.listOfProfiles ?? []) {
          _listOfProfileModel.add(CustomProfile(response));
        }
        _counter++;
        _isLoading = false;
        notifyListeners();
      }
    }
  }

  void goBack() async {
    _navigationService.back();
  }

  Future goToProfileDetailsPage(BuildContext context, String profileId) async {
    await _navigationService.navigateTo(
      Routes.profileView,
      arguments: ProfileViewArguments(
          menuScreenContext: context,
          onScreenHideButtonPressed: () {},
          isInspectView: true,
          inspectProfileId: profileId,
          inspecterProfileId: _id),
    );
  }
}
