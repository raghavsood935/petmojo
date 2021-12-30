import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class ManageGroupViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  void back() {
    _navigationService.back();
  }
}
