import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/group_response/pending_groups_invitations_response.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class InvitationsTabViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackbarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool isLoading = false;

  List<GroupInvitationResponse> _listOfInvitations = [];

  List<GroupInvitationResponse> get listOfInvitations => _listOfInvitations;

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    notifyListeners();

    getInvitations();
  }

  Future getInvitations() async {
    isLoading = true;
    _listOfInvitations.clear();
    notifyListeners();
    var result =
        await _tamelyApi.showPendingInvitations(isHuman, petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      if (error.getErrorMessage() !=
          "Connection failed due to internet connection") {
        _snackbarService.showSnackbar(message: error.getErrorMessage());
      }
      isLoading = false;
      notifyListeners();
    } else if (result.data != null) {
      if (result.data!.success ?? false) {
        _listOfInvitations.addAll(result.data!.listOfInvitations ?? []);
        isLoading = false;
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

  Future declineInvitation(String groupId) async {
    var result = await _tamelyApi.declineInvitation(
        GroupBasicBody(groupId), isHuman,
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
}
