import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/animal_profile_response.dart';
import 'package:tamely/models/list_of_pending_relation_requests.dart';
import 'package:tamely/models/params/confirm_relation_request_body.dart';
import 'package:tamely/models/params/get_guardians_body.dart';
import 'package:tamely/models/params/get_relation_requests_body.dart';
import 'package:tamely/models/params/reject_relation_request_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class RequestsViewModel extends BaseModel {
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackbarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  List<AnimalProfileResponse> listOfGuardianRequests = [];
  List<RelationRequestResponse> listOfRelationRequests = [];

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool isLoading = false;

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    notifyListeners();

    getRequests();
  }

  Future getRequests() async {
    isLoading = true;
    notifyListeners();
    var result;
    if (isHuman) {
      result = await _tamelyApi.getPendingGuardianRequest();
    } else {
      result = await _tamelyApi.getRelationsRequests(
          GetRelationRequestsBody(petId, "incoming"), petToken);
    }

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      isLoading = false;
      notifyListeners();
      _snackbarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      if (isHuman) {
        listOfGuardianRequests.addAll(result.data!.listOfPendingRequests ?? []);
      } else {
        listOfRelationRequests
            .addAll(result.data!.listOfRelationRequests ?? []);
      }
      isLoading = false;
      notifyListeners();
    }
  }

  Future acceptGuardianRequest(String animalId) async {
    var result =
        await _tamelyApi.confirmGuardianRequest(GetGuardianBody(animalId));

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackbarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      _snackbarService.showSnackbar(message: result.data!.message!);
    }
  }

  Future acceptRelationRequest(String animalId) async {
    var result = await _tamelyApi.confirmRelationsRequest(
        ConfirmRelationRequestBody(petId, animalId), petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackbarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      _snackbarService.showSnackbar(message: result.data!.message!);
    }
  }

  // Future declineRelationRequest(String animalId) async {
  //   var result = await _tamelyApi.rejectRelationRequest(
  //       RejectRelationRequestBody(id, animalId), petToken);
  //
  //   if (result.getException != null) {
  //     ServerError error = result.getException as ServerError;
  //     _snackbarService.showSnackbar(message: error.getErrorMessage());
  //   } else if (result.data != null) {
  //     _snackbarService.showSnackbar(message: result.data!.message!);
  //   }
  // }
}
