import 'package:tamely/shared/base_viewmodel.dart';

class MyGroupsTabViewModel extends BaseModel {
  List _listOfManagingGroups = [];
  List _listOfJoinedGroups = [GroupsModel()];
  List _listOfAlsoLikedGroups = [];

  List get listOfManagingGroups => _listOfManagingGroups;


  List get listOfAlsoLikedGroups => _listOfAlsoLikedGroups;

  List get listOfJoinedGroups => _listOfJoinedGroups;

  Future createGroup() async {}

  dummyInitial() {
    for (int i = 0; i < 10; i++) {
      _listOfAlsoLikedGroups.add(GroupsModel());
    }
  }

  Future searchGroups() async {}
}

class GroupsModel {
  String _groupName = "India Solo travellers";
  String _membersCount = "874k";
  String _groupProfileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU";

  String get groupName => _groupName;

  String get membersCount => _membersCount;

  String get groupProfileImgUrl => _groupProfileImgUrl;
}
