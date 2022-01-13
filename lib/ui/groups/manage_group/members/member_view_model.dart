import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/models/group_response/get_all_group_members_response.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/models/params/groups/group_basic_with_counter_body.dart';
import 'package:tamely/models/params/groups/make_admin_group_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/String.dart';

class MemberViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackbarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();
  final _bottomsheetService = locator<BottomSheetService>();

  bool isHuman = true;
  String humanId = "";
  String petId = "";
  String petToken = "";

  bool isLoading = false;

  bool isMember = false;

  bool isChanged = false;

  int _counter = 0;
  bool _isEndOfList = false;

  String groupId = "";

  int adminCount = 0;
  List<String> adminIds = [];
  bool isAbleToLeave = false;

  int get counter => _counter;
  bool get isEndOfList => _isEndOfList;

  List<GroupMemberResponse> members = [];

  Future init(String grpID, bool isMem) async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();

    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    humanId = profile.userId;

    groupId = grpID;

    isMember = isMem;

    notifyListeners();

    getMembers(true);
  }

  back() {
    _navigationService.back(result: isChanged);
  }

  Future getMembers(bool isFromRefresh) async {
    isLoading = true;
    _isEndOfList = false;
    if (isFromRefresh) {
      members.clear();
      _counter = 0;
      notifyListeners();
    }
    notifyListeners();
    var result = await _tamelyApi
        .getMembers(GroupBasicWithCounterBody(groupId, _counter));

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      isLoading = false;
      notifyListeners();
      _snackbarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      members.addAll(result.data!.listOfMembers ?? []);
      if ((result.data!.listOfMembers ?? []).length < 20) {
        _isEndOfList = true;
        notifyListeners();
      }
      isLoading = false;
      _counter++;
      notifyListeners();
      checkAdminCount();
    }
  }

  Future checkAdminCount() async {
    adminCount = 0;
    adminIds.clear();
    notifyListeners();
    for (GroupMemberResponse response in members) {
      if (response.isAdmin ?? false) {
        adminCount++;
        adminIds.add(response.user!.Id ?? "");
      }
    }

    if (adminCount <= 1) {
      if (adminIds.contains((isHuman ? humanId : petId))) {
        isAbleToLeave = false;
      } else {
        isAbleToLeave = true;
      }
    } else {
      isAbleToLeave = true;
    }

    notifyListeners();
  }

  Future onActionPressed(
      String profileID, String userType, int index, bool isAdmin) async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.BasicListOfOptionsBottomSheet,
      isScrollControlled: true,
      barrierDismissible: true,
      customData: ["${isAdmin ? "Remove" : "Make"} admin", "Remove from group"],
    );

    if (sheetResponse!.confirmed) {
      print(sheetResponse.data);
      switch (sheetResponse.data) {
        case 0:
          {
            adminAction(
              profileID,
              userType,
              isAdmin,
            );
            break;
          }
        case 1:
          {
            removeMember(profileID, userType, index);
            break;
          }
      }
    }
  }

  Future adminAction(String id, String userType, bool isAdmin) async {
    var result;
    if (isAdmin) {
      result = await _tamelyApi.removeAdmin(
          MakeGroupAdminBody(groupId, id, userType), isHuman,
          petToken: petToken);
    } else {
      result = await _tamelyApi.makeAdmin(
          MakeGroupAdminBody(groupId, id, userType), isHuman,
          petToken: petToken);
    }

    if (result.getException != null) {
      // ServerError error = result.getException as ServerError;
      // _snackbarService.showSnackbar(message: error.getErrorMessage());
      getMembers(true);
      isChanged = true;
      notifyListeners();
    } else if (result.data != null) {
      if (result.data!.success ?? false) {
        getMembers(true);
        isChanged = true;
        notifyListeners();
      }
      _snackbarService.showSnackbar(message: result.data!.message!);
    }
  }

  Future removeMember(String id, String userType, int index) async {
    var result = await _tamelyApi.removeMember(
        MakeGroupAdminBody(groupId, id, userType), isHuman,
        petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackbarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      if (result.data!.success ?? false) {
        members.removeAt(index);
        isChanged = true;
        notifyListeners();
      }
      _snackbarService.showSnackbar(message: result.data!.message!);
    }
  }

  Future onInviteTapped() async {
    await _navigationService.navigateTo(Routes.createGroupThirdView,
        arguments: CreateGroupThirdViewArguments(
            groupId: groupId, isFromEditView: true));
  }

  Future leaveGroup() async {
    var sheetResponse = await _bottomsheetService.showCustomSheet(
      variant: BottomSheetType.DeletePostBottomSheet,
      barrierDismissible: true,
      isScrollControlled: true,
      title: leaveGroupConfirmation,
      mainButtonTitle: "LEAVE",
      secondaryButtonTitle: "CANCEL",
    );

    if (int.parse(sheetResponse!.data.toString()) == 1) {
      var response = await _tamelyApi
          .leaveGroup(GroupBasicBody(groupId), isHuman, petToken: petToken);
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        if (error.getErrorMessage() == "Received invalid status code: 403") {
          _snackbarService.showSnackbar(
              message: "You don't have required permissions");
        } else {
          _snackbarService.showSnackbar(message: error.getErrorMessage());
        }
      } else if (response.data != null) {
        if (response.data!.success ?? false) {
          getMembers(true);
          isMember = false;
          isChanged = true;
          notifyListeners();
        }
        _snackbarService.showSnackbar(message: response.data!.message ?? "");
      }
    }
  }
}
