import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/enum/profile_types.dart';
import 'package:tamely/models/follow_profile_model.dart';
import 'package:tamely/models/params/send_follow_request_body/from_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/to_request_body.dart';
import 'package:tamely/models/params/show_people_to_follow_body.dart';
import 'package:tamely/models/profile_model_response.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class FollowPeopleProfileActionViewModel extends BaseModel {
  final log = getLogger("FollowPeopleProfileActionView");
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();

  String _id = "";

  String title = "Follow 5 Profiles";

  int _counter = 0;
  bool _isLoading = true;

  List<ProfileResponse> _listOfProfileModel = [];

  List<ProfileResponse> get listOfProfileModel => _listOfProfileModel;

  bool get isLoading => _isLoading;

  Future init(String id) async {
    _id = id;
    notifyListeners();
    await getProfilesList();
  }

  Future getProfilesList() async {
    print("COUNTER VALUE $_counter");
    _isLoading = true;
    _listOfProfileModel.clear();
    notifyListeners();
    ShowPeopleToFollowBody body = ShowPeopleToFollowBody(_counter);

    print("AFASDFASDFASDF A FDASD ${body.counter}");

    var result = await _tamelyApi.showPeoplesToFollow(body);
    if (result.data != null) {
      if (result.data!.listOfProfiles != null) {
        _listOfProfileModel.addAll(result.data!.listOfProfiles ?? []);
        _counter++;
        _isLoading = false;
        notifyListeners();
      }
    }
  }

  void goBack() async {
    _navigationService.back();
  }

  Future sendFollowRequest(ProfileResponse profileResponse) async {
    SendFollowRequestBody body = SendFollowRequestBody(
      FromRequestBody(_id, "Human"),
      ToRequestBody(
        profileResponse.Id!,
        "Human",
      ),
    );
    var result = await _tamelyApi.sendFollowRequest(body);

    if (result.data != null) {
      if (result.data!.success ?? false) {}
    }
  }
}
