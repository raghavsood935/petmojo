import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/list_of_followers_resopnse.dart';
import 'package:tamely/models/list_of_followings_resopnse.dart';
import 'package:tamely/models/params/fetch_list_of_following_body.dart';
import 'package:tamely/models/params/send_follow_request_body/from_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/to_request_body.dart';
import 'package:tamely/models/params/show_people_to_follow_body.dart';
import 'package:tamely/models/profile_model_response.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/profilepage/completed_profile/follow_people_action_viewmodel.dart';

class ListOfFollowingsViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();

  String _id = "";

  bool _isFollowers = false;

  int _counter = 0;
  bool _isLoading = true;

  List<CustomProfile> _listOfFollowersProfileModel = [];
  List<FollowingResponse> _listOfFollowingsProfileModel = [];

  List<CustomProfile> get listOfFollowersProfileModel =>
      _listOfFollowersProfileModel;

  List<FollowingResponse> get listOfFollowingsProfileModel =>
      _listOfFollowingsProfileModel;

  bool get isLoading => _isLoading;

  Future init(String id, bool isFollowers) async {
    _id = id;
    _isFollowers = isFollowers;
    notifyListeners();
    await getProfilesList();
  }

  Future getProfilesList() async {
    _isLoading = true;
    _listOfFollowersProfileModel.clear();
    notifyListeners();

    FetchListOfFollowingBody body = FetchListOfFollowingBody(_id, _counter);
    var result;
    if (_isFollowers) {
      result = await _tamelyApi.getListOfFollowers(body, true);
    } else {
      result = await _tamelyApi.getListOfFollowings(body, true);
    }

    if (result.data != null) {
      if (_isFollowers) {
        if (result.data!.listOfFollowers != null) {
          for (FollowersResponse response
              in result.data!.listOfFollowers ?? []) {
            _listOfFollowersProfileModel.add(CustomProfile(response));
            notifyListeners();
          }
        }
      } else {
        if (result.data!.listOfFollowings != null) {
          _listOfFollowingsProfileModel
              .addAll(result.data!.listOfFollowings ?? []);
          notifyListeners();
        }
      }
      _counter++;
      _isLoading = false;
      notifyListeners();
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

  Future sendFollowRequest(FollowersResponse profileResponse) async {
    SendFollowRequestBody body = SendFollowRequestBody(
      FromRequestBody(_id, "User"),
      ToRequestBody(
        profileResponse.followersDetailsResponse!.Id!,
        "User",
      ),
    );
    var result = await _tamelyApi.sendFollowRequest(body, true);
  }
}

class CustomProfile {
  FollowersResponse _profile;
  bool _isFollowing = false;

  CustomProfile(this._profile) {
    _isFollowing = (_profile.isFollowing ?? 0) == 1;
  }

  bool get isFollowing => _isFollowing;

  FollowersResponse get profile => _profile;

  void changeFollowing() {
    _isFollowing = !_isFollowing;
  }
}
