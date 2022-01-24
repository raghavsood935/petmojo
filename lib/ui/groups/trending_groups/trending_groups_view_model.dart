import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/params/counter_body.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class TrendingGroupsViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackbarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  int _counter = 0;
  bool _isLoading = false;
  bool _isEndOfList = false;

  List<GroupBasicInfoResponse> listOfProfiles = [];

  back() {
    _navigationService.back();
  }

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();

    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    notifyListeners();

    getAllGroups();
  }

  createGroup() {
    _navigationService.navigateTo(Routes.createGroupFirstView);
  }

  searchGroup() {
    _navigationService.navigateTo(Routes.exploreGroupView);
  }

  Future getAllGroups() async {
    _isLoading = true;
    notifyListeners();
    var result = await _tamelyApi.getAllGroups(CounterBody(_counter), isHuman,
        petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackbarService.showSnackbar(message: error.getErrorMessage());
      _isLoading = false;
      notifyListeners();
    } else if (result.data != null) {
      if (result.data!.success ?? false) {
        listOfProfiles.addAll(result.data!.listOfGroups ?? []);
        if ((result.data!.listOfGroups ?? []).length < 10) {
          _isEndOfList = true;
        }
        _isLoading = false;
        _counter++;
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

  bool get isEndOfList => _isEndOfList;

  bool get isLoading => _isLoading;

  int get counter => _counter;
}
