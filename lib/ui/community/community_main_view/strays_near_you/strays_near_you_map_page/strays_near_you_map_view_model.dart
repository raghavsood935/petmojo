import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/location_helper.dart';

class StraysNearYouMapViewModel extends BaseModel {

  StraysNearYouMapViewModel(this.listOfAnimals);

  final List<GetAnimalsByLocationDetailsResponse> listOfAnimals;
  final CameraPosition initialLocation = const CameraPosition(target: LatLng(28.6214965, 77.2279098), zoom: 10);
  late GoogleMapController mapController;
  late final BitmapDescriptor startIcon;
  late final BitmapDescriptor currentIcon;
  final Completer<GoogleMapController> controller = Completer();
  final Set<Marker> markers = {};
  GetAnimalsByLocationDetailsResponse? _selectedAnimal;
  String? mapStyle;
  GetAnimalsByLocationDetailsResponse? get selectedAnimal => _selectedAnimal;

  final _navigationService = locator<NavigationService>();

  Future<void> init() async {
    rootBundle.loadString('assets/styles/map_style.txt').then((string) {
      mapStyle = string;
    });
    currentIcon = await LocationHelper.bitmapDescriptorFromSvgAsset('assets/images/marker_icon_current.svg');
    startIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(),"assets/images/marker_icon_destination.png");
    mapController = await controller.future;
    updateMap();
  }

  Future<void> updateMap() async {
    Position cLoc = await LocationHelper.getCurrentLocation();
    markers.add(Marker(
        markerId: MarkerId("cLoc"),
      position: LatLng(cLoc.latitude, cLoc.longitude),
      icon: currentIcon,
      zIndex: 1
    ));

    listOfAnimals.forEach((animal) {
      if(animal.location?.coordinates !=null && animal.location!.coordinates!.length == 2)
      markers.add(Marker(
        markerId: MarkerId(animal.Id!),
        position: LatLng(animal.location!.coordinates![1], animal.location!.coordinates![0]),
        icon:  startIcon,
        zIndex: 2,
        onTap: () {
          _selectedAnimal = animal;
          notifyListeners();
        }
      ));
    });

    if(listOfAnimals.length>0)
    _selectedAnimal = listOfAnimals.first;

    final CameraPosition _newCameraPosition = CameraPosition(target: LatLng(cLoc.latitude, cLoc.longitude), zoom: 16);
    mapController.animateCamera(CameraUpdate.newCameraPosition(_newCameraPosition));
    notifyListeners();
  }

  void onDispose() {
    mapController.dispose();
  }

  void navigateBack() {
    _navigationService.back();
  }
}