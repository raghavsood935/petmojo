import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class PreferencesViewModel extends BaseModel {
  final _bottomSheetService = locator<BottomSheetService>();

  int _friendlinessWithHumans = 0;
  int _friendlinessWithAnimals = 0;

  String _favourite = "";
  String _thingsDislike = "";
  String _uniqueHabits = "";
  String _eatingHabit = "";

  String get favourite => _favourite;

  String get thingsDislike => _thingsDislike;

  String get uniqueHabits => _uniqueHabits;

  String get eatingHabit => _eatingHabit;

  int get friendlinessWithHumans => _friendlinessWithHumans;

  int get friendlinessWithAnimals => _friendlinessWithAnimals;

  friendlinessWithHumanChange(int i) {
    _friendlinessWithHumans = i + 1;
    notifyListeners();
  }

  friendlinessWithAnimalChange(int i) {
    _friendlinessWithAnimals = i + 1;
    notifyListeners();
  }

  Future showEditFavourite() async {
    var sheetRes = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.AddDetailsBottomSheet,
      title: _favourite.isEmpty ? "Add favourite" : "Edit favourite",
      mainButtonTitle: "Save",
      customData: _favourite,
      takesInput: true,
    );

    if (sheetRes!.confirmed) {
      _favourite = sheetRes.data.toString();
      notifyListeners();
    }
  }

  Future showEditThingsDislike() async {
    var sheetRes = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.AddDetailsBottomSheet,
      title:
          _thingsDislike.isEmpty ? "Add things dislike" : "Edit things dislike",
      mainButtonTitle: "Save",
      customData: _thingsDislike,
      takesInput: true,
    );

    if (sheetRes!.confirmed) {
      _thingsDislike = sheetRes.data.toString();
      notifyListeners();
    }
  }

  Future showEditUniqueHabits() async {
    var sheetRes = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.AddDetailsBottomSheet,
      title: _uniqueHabits.isEmpty ? "Add unique habits" : "Edit unique habits",
      mainButtonTitle: "Save",
      customData: _uniqueHabits,
      takesInput: true,
    );

    if (sheetRes!.confirmed) {
      _uniqueHabits = sheetRes.data.toString();
      notifyListeners();
    }
  }

  Future showEditEatingHabits() async {
    var sheetRes = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.AddDetailsBottomSheet,
      title: _eatingHabit.isEmpty ? "Add eating habits" : "Edit eating habits",
      mainButtonTitle: "Save",
      customData: _eatingHabit,
      takesInput: true,
    );

    if (sheetRes!.confirmed) {
      _eatingHabit = sheetRes.data.toString();
      notifyListeners();
    }
  }
}
