import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';

class LocationPicker extends StatefulWidget {
  @override
  State<LocationPicker> createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  final Permission _permission = Permission.location;
  PermissionStatus _permissionStatus = PermissionStatus.denied;
  final Completer<GoogleMapController> _controller = Completer();
  LatLng currentLocation = const LatLng(0.0, 0.0);
  final MarkerId markerId = MarkerId('markerId');
  final Set<Marker> _markers = {};
  late Marker marker;
  final _navigationService = locator<NavigationService>();

  @override
  void initState() {
    super.initState();
    marker = Marker(
      markerId: markerId,
      position: currentLocation,
    );
    _listenForPermissionStatus();
  }

  void _listenForPermissionStatus() async {
    final status = await _permission.status;
    setState(() => _permissionStatus = status);
    _determinePosition();
  }

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();
    setState(() {
      print(status);
      _permissionStatus = status;
      print(_permissionStatus);
    });
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      requestPermission(_permission);
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        requestPermission(_permission);
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are g anted and we can
    // continue accessing the position of the device.
    print('location');
    Position location = await Geolocator.getCurrentPosition()
        .whenComplete(() => print('1sdfg'));
    currentLocation = LatLng(location.latitude, location.longitude);
    //coordinatesList.add(currentLatLong);
    CameraUpdate update = CameraUpdate.newCameraPosition(
        CameraPosition(target: currentLocation, zoom: 12));
    updateMarker();

    GoogleMapController controller = await _controller.future;
    controller.animateCamera(update);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Location'),
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: GoogleMap(
          mapType: MapType.normal,
          markers: _markers,
          zoomControlsEnabled: false,
          onTap: (latLat) {
            currentLocation = latLat;
            updateMarker();
          },
          initialCameraPosition: const CameraPosition(target: LatLng(0, 0)),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getLatLang();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.check),
      ),
    );
  }

  void getLatLang() {
    _navigationService.replaceWith(
      Routes.dogRunnersView,
      arguments: DogRunnersArguments(
        currentLocation: currentLocation,
      ),
    );
  }

  void updateMarker() {
    marker = marker.copyWith(positionParam: currentLocation);

    setState(() {
      _markers.add(marker);
    });
  }
}
