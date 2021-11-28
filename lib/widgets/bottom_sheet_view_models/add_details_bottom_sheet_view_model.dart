import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/params/edit_animal_profile_details_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/widgets/dialogs/add_details_bottom_sheet.dart';

class AddDetailsBottomSheetViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> onSave(AddDetailsBottomSheet widget, String value) async {
    print("Asdfasdfasdfasdfasdfasd");

    String petId = widget.sheetRequest.data[0];
    int type = widget.sheetRequest.data[1];

    print("type ::::::: $type");

    _isLoading = true;
    notifyListeners();

    EditAnimalProfileDetailsBody body = EditAnimalProfileDetailsBody(
      petId,
      0,
      0,
      type == 1 ? value : "0",
      type == 2 ? value : "0",
      type == 3 ? value : "0",
      type == 4 ? value : "0",
    );

    var result =
        await _tamelyApi.editAnimalProfileDetails(body).whenComplete(() {
      _isLoading = false;
      notifyListeners();
      widget.onDialogTap(
        SheetResponse(
          confirmed: true,
          data: value,
        ),
      );
    });

    print(result);
  }
}
