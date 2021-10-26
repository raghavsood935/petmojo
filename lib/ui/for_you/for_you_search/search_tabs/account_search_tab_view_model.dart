import 'package:kubelite/models/profile_account_model.dart';
import 'package:kubelite/shared/base_viewmodel.dart';

class AccountSearchTabViewModel extends BaseModel {
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
