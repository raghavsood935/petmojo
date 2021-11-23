import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/animal_profile_detail_model.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/edit_animal_profile_details_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/util/utils.dart';

class PreferencesViewModel extends FutureViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _dialogService = locator<DialogService>();
  final _tamelyApi = locator<TamelyApi>();

  String _petId = "";

  int _friendlinessWithHumans = 0;
  int _friendlinessWithAnimals = 0;

  String _favourite = "";
  String _thingsDislike = "";
  String _uniqueHabits = "";
  String _eatingHabit = "";

  bool _withHumanChanged = false;
  bool _withHumanLoading = false;
  bool _withAnimalsChanged = false;
  bool _withAnimalsLoading = false;

  String get favourite => _favourite;

  String get thingsDislike => _thingsDislike;

  String get uniqueHabits => _uniqueHabits;

  String get eatingHabit => _eatingHabit;

  int get friendlinessWithHumans => _friendlinessWithHumans;

  int get friendlinessWithAnimals => _friendlinessWithAnimals;

  bool get withHumanChanged => _withHumanChanged;

  bool get withHumanLoading => _withHumanLoading;

  bool get withAnimalsChanged => _withAnimalsChanged;

  bool get withAnimalsLoading => _withAnimalsLoading;

  void onInit(String _id) {
    _petId = _id;
    notifyListeners();
    getValues();
  }

  Future<void> getValues() async {
    if (await Util.checkInternetConnectivity()) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        var result = await runBusyFuture(_tamelyApi
            .getAnimalProfileDetail(AnimalProfileDetailsBody(_petId)));
        if (result != null) {
          if (result.data != null) {
            setValues(result.data!);
          }
        } else {
          _dialogService.completeDialog(DialogResponse(confirmed: true));
        }
      });
    } else {}
  }

  Future setValues(AnimalProfileDetailModelResponse response) async {
    _friendlinessWithHumans =
        response.animalprofileModel!.friendlinessWithHumans ?? 0;
    _friendlinessWithAnimals =
        response.animalprofileModel!.friendlinessWithAnimals ?? 0;
    _favourite = response.animalprofileModel!.favouriteThings ?? "";
    _thingsDislike = response.animalprofileModel!.thingsDislikes ?? "";
    _uniqueHabits = response.animalprofileModel!.uniqueHabits ?? "";
    _eatingHabit = response.animalprofileModel!.eatingHabits ?? "";
    _dialogService.completeDialog(DialogResponse(confirmed: true));
    notifyListeners();
  }

  friendlinessWithHumanChange(int i) {
    if (_friendlinessWithHumans != i + 1) {
      _friendlinessWithHumans = i + 1;
      _withHumanChanged = true;
      notifyListeners();
    }
  }

  friendlinessWithAnimalChange(int i) {
    if (_friendlinessWithAnimals != i + 1) {
      _friendlinessWithAnimals = i + 1;
      _withAnimalsChanged = true;
      notifyListeners();
    }
  }

  Future<void> friendlinessWithAnimalChangeSave() async {
    _withAnimalsLoading = true;
    notifyListeners();
    EditAnimalProfileDetailsBody body = EditAnimalProfileDetailsBody(
      _petId,
      null,
      null,
      null,
      null,
      null,
      _friendlinessWithAnimals,
    );

    var result =
        await _tamelyApi.editAnimalProfileDetails(body).whenComplete(() {
      _withAnimalsLoading = false;
      _withAnimalsChanged = false;
      notifyListeners();
    });
  }

  Future<void> friendlinessWithHumansChangeSave() async {
    _withHumanLoading = true;
    notifyListeners();
    EditAnimalProfileDetailsBody body = EditAnimalProfileDetailsBody(
      _petId,
      null,
      null,
      null,
      null,
      _friendlinessWithHumans,
      null,
    );

    var result =
        await _tamelyApi.editAnimalProfileDetails(body).whenComplete(() {
      _withHumanLoading = false;
      _withHumanChanged = false;
      notifyListeners();
    });
  }

  Future showEditFavourite() async {
    print("asdfgads");
    var sheetRes = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.AddDetailsBottomSheet,
      title: _favourite.isEmpty ? "Add favourite" : "Edit favourite",
      mainButtonTitle: "Save",
      customData: _favourite,
      data: [_petId, 1],
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
      data: [_petId, 2],
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
      data: [_petId, 3],
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
      data: [_petId, 4],
      takesInput: true,
    );

    if (sheetRes!.confirmed) {
      _eatingHabit = sheetRes.data.toString();
      notifyListeners();
    }
  }

  @override
  Future futureToRun() {
    // TODO: implement futureToRun
    throw UnimplementedError();
  }
}
