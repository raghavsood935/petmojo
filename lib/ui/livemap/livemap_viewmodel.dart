import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:tamely/models/params/change_runtwo_status_body.dart';
import 'package:tamely/models/params/set_pee_and_poo_body.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_database/firebase_database.dart';

class LiveMapViewModel extends FutureViewModel<void> implements Initialisable {
  final log = getLogger('LiveMapViewModel');
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final ImagePicker _picker = ImagePicker();

  WalkNumber walkNumber;
  String serviceProviderId;
  String userId;
  String appointmentId;

  LiveMapViewModel(
      this.walkNumber, this.serviceProviderId, this.userId, this.appointmentId);

  void navigateBack() {
    _navigationService.back();
  }

  // dummy

  double _distance = 0;
  int _timeTook = 25;
  late Position position;
  final DatabaseReference ref = FirebaseDatabase.instance.reference();
  final Completer<GoogleMapController> controller = Completer();
  late StreamSubscription<Event> _locationEvent;
  List<LatLng> coordinatesList = [];
  LatLng currentLatLong = LatLng(28.6214965, 77.2279098);
  final Set<Marker> markers = {};
  Set<Polyline> mapPolylines = {};
  CameraPosition myLocation =
      const CameraPosition(target: LatLng(28.6214965, 77.2279098), zoom: 10);
  late GoogleMapController mapController;
  late Marker marker;
  late Polyline polyline;
  late Timer timer;
  int startTime = 0;
  final MarkerId markerId = MarkerId('markerId');
  final PolylineId polylineId = PolylineId('polylineId');

  Future<void> init() async {
    mapController = await controller.future;

    await getCurrentLocation();

    markers.add(marker);
    mapPolylines.add(polyline);
    mapController = await controller.future;

    getLocationFromFirebase();
  }

  Future<void> getCurrentLocation() async {
    Position currentPosition = await Geolocator.getCurrentPosition();
    currentLatLong =
        LatLng(currentPosition.latitude, currentPosition.longitude);
    print('current : $currentLatLong');

    marker = Marker(
      markerId: markerId,
      position: currentLatLong,
    );
    markers.add(marker);
    CameraUpdate update = CameraUpdate.newCameraPosition(
        CameraPosition(target: currentLatLong, zoom: 19));
    mapController.animateCamera(update);

    polyline = Polyline(
      polylineId: polylineId,
      color: Colors.red,
      width: 5,
      visible: true,
      geodesic: false,
      points: [LatLng(currentLatLong.latitude, currentLatLong.longitude)],
    );

    notifyListeners();
  }

  double get distance => _distance;
  int get timeTook => _timeTook;

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }

  void getLocationFromFirebase() {
    double dist = 0;
    List<LatLng> dataList = [];
    FirebaseDatabase.instance
        .reference()
        .child('dogRunnerTime/$serviceProviderId/time')
        .once()
        .then((snapshot) {
      startTime = snapshot.value;
      print('START TIME $startTime');
      startTimer();
      notifyListeners();
    });
    _locationEvent = FirebaseDatabase.instance
        .reference()
        .child('dogRunner/$serviceProviderId')
        .onValue
        .listen((event) {
      Map<String, dynamic> result = Map<String, dynamic>.from(
          event.snapshot.value as Map<dynamic, dynamic>);
      result.forEach((key, value) {
        dataList.add(LatLng(value['lat'], value['long']));
      });

      if (dataList.isNotEmpty) {
        currentLatLong = dataList.last;

        dataList.forEach((element) {
          if (coordinatesList.length == 0)
            coordinatesList.add(currentLatLong);
          else {
            dist = Geolocator.distanceBetween(
              coordinatesList.last.latitude,
              coordinatesList.last.longitude,
              element.latitude,
              element.longitude,
            );

            if (!(coordinatesList.last.longitude == element.longitude &&
                    coordinatesList.last.latitude == element.longitude) &&
                dist > 2) {
              coordinatesList.add(element);
              _distance += dist;

              markers.remove(marker);
              marker = marker.copyWith(positionParam: currentLatLong);
              print(coordinatesList.length);
              CameraUpdate update = CameraUpdate.newCameraPosition(
                  CameraPosition(target: currentLatLong, zoom: 19));
              mapController.animateCamera(update);
              polyline.copyWith(pointsParam: coordinatesList);
              coordinatesList.forEach((element) {
                print(element);
              });
              mapPolylines.add(Polyline(
                polylineId: const PolylineId('polylineid'),
                color: Colors.red,
                width: 5,
                visible: true,
                geodesic: false,
                // jointType: JointType.mitered,
                points: coordinatesList,
              ));
              notifyListeners();

              markers.add(marker);
              notifyListeners();
            }
          }
        });
      }
    });
  }

  void startTimer() {
    const oneSec = Duration(seconds: 60);
    int currentTime = DateTime.now().millisecondsSinceEpoch;
    timer = Timer.periodic(oneSec, (Timer t) {
      currentTime = DateTime.now().millisecondsSinceEpoch;
      if (currentTime > startTime) {
        _timeTook = (currentTime - startTime) ~/ 6000;
        notifyListeners();
      }
    });
  }

  void onDispose() {
    _locationEvent.cancel();
    mapController.dispose();
  }
}
