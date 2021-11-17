import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/models/follow_profile_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class FollowPeopleProfileActionViewModel extends BaseModel {
  final log = getLogger("FollowPeopleProfileActionView");
  final _navigationService = locator<NavigationService>();

  String title = "Follow 5 Profiles";

  List<FollowProfileModel> _listOfProfileModel = [
    FollowProfileModel(),
    FollowProfileModel(),
    FollowProfileModel(),
    FollowProfileModel(),
    FollowProfileModel(),
  ];

  List<FollowProfileModel> get listOfProfileModel => _listOfProfileModel;

  void goBack() async {
    _navigationService.back();
  }
}
