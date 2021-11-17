import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class AllSearchTabViewModel extends BaseModel {
  List<AccountProfileModel> _listOfAccounts = [
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
    AccountProfileModel(),
  ];

  List<AccountProfileModel> get listOfAccounts => _listOfAccounts;

  Future<void> removeAccountFromList(int index) async {
    _listOfAccounts.removeAt(index);
    notifyListeners();
  }
}
