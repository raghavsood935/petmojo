import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';

class CommunityMainViewModel extends BaseModel {
  final navigationService = locator<NavigationService>();

  String _location = "T-129 Emerald Hills Gurugram...";

  List<SocialCenterModel> _listOfSocialCenterModel = [
    SocialCenterModel("Strays nearby", straysNearbyImgPath),
    SocialCenterModel("Find play buddies", findPlayBuddiesImgPath),
    SocialCenterModel("Mating", matingImgPath),
    SocialCenterModel("Lost & Found Animals", lostAndFoundAnimalImgPath),
    SocialCenterModel("Adoption", adoptionImgPath),
    SocialCenterModel("Events", eventsImgPath),
  ];

  List<TrendingGroupModel> _listOfTrendingGroupModel = [];
  List<PlayBuddiesNearMeModel> _listOfPlayBuddiesNearMeModel = [];
  List<BlogsModel> _listOfBlogsModel = [];

  String get location => _location;

  List<SocialCenterModel> get listOfSocialCenterModel =>
      _listOfSocialCenterModel;

  List<TrendingGroupModel> get listOfTrendingGroupModel =>
      _listOfTrendingGroupModel;

  List<PlayBuddiesNearMeModel> get listOfPlayBuddiesNearMeModel =>
      _listOfPlayBuddiesNearMeModel;

  List<BlogsModel> get listOfBlogsModel => _listOfBlogsModel;

  Future<void> goToGroupsView() async {
    navigationService.navigateTo(Routes.groupsView);
  }

  Future<void> dummyStartFunction() async {
    int i = 0;
    while (i < 10) {
      _listOfTrendingGroupModel.add(TrendingGroupModel());
      _listOfPlayBuddiesNearMeModel.add(PlayBuddiesNearMeModel());
      _listOfBlogsModel.add(BlogsModel());
      i++;
    }
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
