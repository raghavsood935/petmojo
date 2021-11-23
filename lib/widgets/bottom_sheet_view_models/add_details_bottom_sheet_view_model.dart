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
    String petId = widget.sheetRequest.data[0];
    int type = widget.sheetRequest.data[1];

    _isLoading = true;
    notifyListeners();

    EditAnimalProfileDetailsBody body = EditAnimalProfileDetailsBody(
      petId,
      type == 1 ? value : null,
      type == 2 ? value : null,
      type == 3 ? value : null,
      type == 4 ? value : null,
      null,
      null,
    );

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
  }
}
