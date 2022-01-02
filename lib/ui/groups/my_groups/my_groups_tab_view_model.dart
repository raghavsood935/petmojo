import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/group_response/get_joined_groups_response.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class MyGroupsTabViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackbarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool isJoinedGroupLoading = false;
  bool isAllGroupLoading = false;

  List<GetJoinedGroupInfoResponse> _listOfManagingGroups = [];
  List<GetJoinedGroupInfoResponse> _listOfJoinedGroups = [];
  List<GroupBasicInfoResponse> _listOfAllGroups = [];

  List<GetJoinedGroupInfoResponse> get listOfManagingGroups =>
      _listOfManagingGroups;

  List<GetJoinedGroupInfoResponse> get listOfJoinedGroups =>
      _listOfJoinedGroups;

  List<GroupBasicInfoResponse> get listOfAllGroups => _listOfAllGroups;

  Future createGroup() async {
    _navigationService.navigateTo(Routes.createGroupFirstView);
  }

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    notifyListeners();

    getAllGroups();
    getJoinedGroups();
  }

  Future getJoinedGroups() async {
    isJoinedGroupLoading = true;
    _listOfJoinedGroups.clear();
    notifyListeners();
    var result = await _tamelyApi.getJoinedGroups(isHuman, petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackbarService.showSnackbar(message: error.getErrorMessage());
      isJoinedGroupLoading = false;
      notifyListeners();
    } else if (result.data != null) {
      if (result.data!.success ?? false) {
        // _listOfJoinedGroups.addAll(result.data!.listOfJoinedGroup ?? []);
        for (GetJoinedGroupInfoResponse group
            in result.data!.listOfJoinedGroup ?? []) {
          if (group.isAdmin ?? false) {
            _listOfManagingGroups.add(group);
          } else {
            _listOfJoinedGroups.add(group);
          }
        }
        isJoinedGroupLoading = false;
        notifyListeners();
      }
    }
  }

  Future getAllGroups() async {
    isAllGroupLoading = true;
    _listOfAllGroups.clear();
    notifyListeners();
    var result = await _tamelyApi.getAllGroups(isHuman, petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackbarService.showSnackbar(message: error.getErrorMessage());
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
        _snackbarService.showSnackbar(message: "You are already a member!");
      } else {
        _snackbarService.showSnackbar(message: error.getErrorMessage());
      }
    } else if (result.data != null) {
      _snackbarService.showSnackbar(message: result.data!.message ?? "");
    }
  }

  Future inspectGroup(String grpId) async {
    _navigationService.navigateTo(
      Routes.groupInfoView,
      arguments: GroupInfoViewArguments(groupId: grpId),
    );
  }

  Future searchGroups() async {
    _navigationService.navigateTo(Routes.exploreGroupView);
  }
}
