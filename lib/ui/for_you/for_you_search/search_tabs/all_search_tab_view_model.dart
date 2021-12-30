import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/for_you/for_you_search/for_you_tab_search_view_model.dart';

class AllSearchTabViewModel extends ForYouTabSearchViewModel {
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
