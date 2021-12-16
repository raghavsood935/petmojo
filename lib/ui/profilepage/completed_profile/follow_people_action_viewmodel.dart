import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/params/send_follow_request_body/from_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/to_request_body.dart';
import 'package:tamely/models/params/show_people_to_follow_body.dart';
import 'package:tamely/models/profile_model_response.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class FollowPeopleProfileActionViewModel extends BaseModel {
  bool isSomethingChanged = false;

  final log = getLogger("FollowPeopleProfileActionView");
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();

  String _id = "";

  String title = "Follow 5 Profiles";

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

    var result;

    ShowPeopleToFollowBody body = ShowPeopleToFollowBody(_counter);
    result = await _tamelyApi.showPeoplesToFollow(body);

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
    _navigationService.back(result: isSomethingChanged ? 1 : 0);
  }

  Future goToProfileDetailsPage(BuildContext context, String profileId) async {
    await _navigationService.navigateTo(
      Routes.profileView,
      arguments: ProfileViewArguments(
        menuScreenContext: context,
        onScreenHideButtonPressed: () {},
        isInspectView: true,
        inspectProfileId: profileId,
        inspecterProfileId: _id,
      ),
    );
  }

  Future sendFollowRequest(ProfileResponse profileResponse) async {
    SendFollowRequestBody body = SendFollowRequestBody(
      FromRequestBody(_id, "User"),
      ToRequestBody(
        profileResponse.Id!,
        "User",
      ),
    );
    var result = await _tamelyApi.sendFollowRequest(body, true);
  }
}

class CustomProfile {
  ProfileResponse _profile;
  bool _isFollowing = false;

  CustomProfile(this._profile) {
    _isFollowing = (_profile.following ?? 0) == 1;
  }

  bool get isFollowing => _isFollowing;

  ProfileResponse get profile => _profile;

  void changeFollowing() {
    _isFollowing = !_isFollowing;
  }
}
