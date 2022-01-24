import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/location_helper.dart';

class StrayProfileListTileModel extends BaseModel {
  String address = "";

  Future getAddress(GetAnimalsByLocationDetailsResponse profile) async {
    LatLng latLng = LatLng(
        profile.location!.coordinates![1], profile.location!.coordinates![0]);

    address = await LocationHelper.getAddress(latLng);
    notifyListeners();
    print(address);
  }
}
