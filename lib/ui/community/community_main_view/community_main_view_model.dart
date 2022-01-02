import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/groups/group_info/group_info_view.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';

class CommunityMainViewModel extends BaseModel {
  final navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool isJoinedGroupLoading = false;
  bool isAllGroupLoading = false;

  String _location = "T-129 Emerald Hills Gurugram...";

  List<SocialCenterModel> _listOfSocialCenterModel = [
    SocialCenterModel("Strays nearby", straysNearbyImgPath),
    SocialCenterModel("Find play buddies", findPlayBuddiesImgPath),
    SocialCenterModel("Mating", matingImgPath),
    // SocialCenterModel("Lost & Found Animals", lostAndFoundAnimalImgPath),
    SocialCenterModel("Adoption", adoptionImgPath),
    // SocialCenterModel("Events", eventsImgPath),
  ];

  List<GroupBasicInfoResponse> _listOfAllGroups = [];
  List<PlayBuddiesNearMeModel> _listOfPlayBuddiesNearMeModel = [];
  List<BlogsModel> _listOfBlogsModel = [];

  String get location => _location;

  List<SocialCenterModel> get listOfSocialCenterModel =>
      _listOfSocialCenterModel;

  List<GroupBasicInfoResponse> get listOfAllGroups => _listOfAllGroups;

  List<PlayBuddiesNearMeModel> get listOfPlayBuddiesNearMeModel =>
      _listOfPlayBuddiesNearMeModel;

  List<BlogsModel> get listOfBlogsModel => _listOfBlogsModel;

  Future<void> goToGroupsView() async {
    navigationService.navigateTo(Routes.groupsView);
  }

  Future<void> onTapMethodForSocialCenter(int index) async {
    switch (index) {
      case 0:
        {
          navigationService.navigateTo(Routes.straysNearYouView);
          break;
        }
      case 1:
        {
          navigationService.navigateTo(Routes.playBuddiesView);
          break;
        }
      case 2:
        {
          navigationService.navigateTo(Routes.matingView);
          break;
        }
      // case 3:
      //   {
      //     // navigationService.navigateTo(Routes.straysNearYouView);
      //     snackBarService.showSnackbar(message: onDevelop);
      //     break;
      //   }
      case 3:
        {
          navigationService.navigateTo(Routes.adoptionView);
          break;
        }
      // case 5:
      //   {
      //     // navigationService.navigateTo(Routes.straysNearYouView);
      //     snackBarService.showSnackbar(message: onDevelop);
      //     break;
      //   }
    }
  }

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    notifyListeners();

    getAllGroups();

    int i = 0;
    while (i < 10) {
      _listOfBlogsModel.add(BlogsModel());
      i++;
    }
  }

  Future getAllGroups() async {
    isAllGroupLoading = true;
    _listOfAllGroups.clear();
    notifyListeners();
    var result = await _tamelyApi.getAllGroups(isHuman, petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      snackBarService.showSnackbar(message: error.getErrorMessage());
      isAllGroupLoading = false;
      notifyListeners();
    } else if (result.data != null) {
      if (result.data!.success ?? false) {
        _listOfAllGroups.addAll(result.data!.listOfGroups ?? []);
        isAllGroupLoading = false;
        notifyListeners();
      }
    }
  }

  Future joinGroup(String groupId) async {
    var result = await _tamelyApi.joinGroup(GroupBasicBody(groupId), isHuman,
        petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      if (error.getErrorMessage() == "Received invalid status code: 400") {
        snackBarService.showSnackbar(message: "You are already a member!");
      } else {
        snackBarService.showSnackbar(message: error.getErrorMessage());
      }
    } else if (result.data != null) {
      snackBarService.showSnackbar(message: result.data!.message ?? "");
    }
  }

  Future inspectGroup(String grpId) async {
    navigationService.navigateTo(
      Routes.groupInfoView,
      arguments: GroupInfoViewArguments(groupId: grpId),
    );
  }
}

class SocialCenterModel {
  String _title;
  String _imgPath;

  SocialCenterModel(this._title, this._imgPath);

  String get imgPath => _imgPath;

  String get title => _title;
}

class TrendingGroupModel {
  String _name = "Cat Vibes Mumbai";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU";
  bool _isJoined = false;
  int _membersCount = 230;

  String get name => _name;

  String get profileImgUrl => _profileImgUrl;

  bool get isJoined => _isJoined;

  int get membersCount => _membersCount;

  void onJoinedChange() {
    _isJoined = !_isJoined;
  }
}

class PlayBuddiesNearMeModel {
  String _name = "Bilbo Baggings";
  String _description = "Dog (Siberian husky)";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU";

  String get name => _name;

  String get description => _description;

  String get profileImgUrl => _profileImgUrl;
}

class BlogsModel {
  String _title =
      "Granny gives everyone the finger, and other tips from OFF Barcelona";
  String _author = "Tamely";
  String _uploadedDate = "24 Jan 2020";
  String _coverImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU";

  String get title => _title;

  String get author => _author;

  String get uploadedDate => _uploadedDate;

  String get coverImgUrl => _coverImgUrl;
}
