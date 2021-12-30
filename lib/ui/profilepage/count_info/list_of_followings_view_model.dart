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
import 'package:tamely/shared/base_viewmodel.dart';

class ListOfFollowingsViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();

  String _id = "";

  String title = "";

  bool _isFollowers = false;

  int _counter = 0;
  bool _isLoading = true;
  bool _isEndOfList = false;

  List<CustomProfile> _listOfFollowersProfileModel = [];
  List<FollowingResponse> _listOfFollowingsProfileModel = [];

  List<CustomProfile> get listOfFollowersProfileModel =>
      _listOfFollowersProfileModel;

  List<FollowingResponse> get listOfFollowingsProfileModel =>
      _listOfFollowingsProfileModel;

  bool get isLoading => _isLoading;
  bool get isEndOfList => _isEndOfList;

  Future init(String id, bool isFollowers) async {
    _id = id;
    _isFollowers = isFollowers;
    title = isFollowers ? "Followers" : "Followings";
    notifyListeners();
    await getProfilesList();
  }

  Future getProfilesList({bool newLoad = false}) async {
    _isLoading = true;
    notifyListeners();
    if (newLoad) {
      _counter = 0;
      _listOfFollowersProfileModel.clear();
      _listOfFollowingsProfileModel.clear();
      _isEndOfList = false;
      notifyListeners();
    }
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
          for (FollowersResponse? response
              in result.data!.listOfFollowers ?? []) {
            _listOfFollowersProfileModel.add(CustomProfile(response!));
          }
          notifyListeners();
          if ((result.data!.listOfFollowers ?? []).length < 20) {
            _isEndOfList = true;
            notifyListeners();
          }
        }
      } else {
        if (result.data!.listOfFollowings != null) {
          _listOfFollowingsProfileModel
              .addAll(result.data!.listOfFollowings ?? []);
          notifyListeners();
          if ((result.data!.listOfFollowings ?? []).length < 20) {
            _isEndOfList = true;
            notifyListeners();
          }
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

  Future goToProfileDetailsPage(
      BuildContext context, String profileId, bool isFollowing) async {
    await _navigationService
        .navigateTo(
          Routes.profileView,
          arguments: ProfileViewArguments(
              menuScreenContext: context,
              onScreenHideButtonPressed: () {},
              isInspectView: true,
              inspectProfileId: profileId,
              inspecterProfileId: _id,
              isFollowing: isFollowing),
        )!
        .whenComplete(() => getProfilesList(newLoad: true));
  }

  Future sendFollowRequest(FollowersResponse profileResponse) async {
    SendFollowRequestBody body = SendFollowRequestBody(
      FromRequestBody(_id, "User"),
      ToRequestBody(
        profileResponse
            .followersDetailsResponse!.followersInnerDetailsResponse!.Id!,
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
