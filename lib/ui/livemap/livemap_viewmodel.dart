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
  String bookingDetailsId;

  LiveMapViewModel(this.walkNumber, this.serviceProviderId, this.userId,
      this.bookingDetailsId);

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
  List<LatLng> coordinatesList =[];
  LatLng currentLatLong = LatLng(28.6214965,77.2279098);
  final Set<Marker> markers = {};
  Set<Polyline> mapPolylines = {};
  CameraPosition myLocation = const CameraPosition(target: LatLng(28.6214965,77.2279098),zoom: 10);
  late GoogleMapController mapController ;
  late Marker marker;
  late  Polyline polyline;


  Future<void> init() async {
    polyline = Polyline(
      polylineId: PolylineId('polylineId'),
      color: Colors.red,
      width: 5,
      visible: true,
      geodesic: false,
      points:   [LatLng(28.6214965,77.2279098)],
    );
    marker = Marker(
      markerId: MarkerId('markerId'),
      position: currentLatLong,
    );

    markers.add(marker);
    mapPolylines.add(polyline);
    mapController = await controller.future;

    getLocationFromFirebase();
  }




  double get distance => _distance;
  int get timeTook => _timeTook;

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }



  void getLocationFromFirebase() {
    late double lat;
    late double long;
    double dist =0;
    _locationEvent = FirebaseDatabase.instance.reference().child('dogRunner/$serviceProviderId').onValue.listen((event) {
       lat = 0.0;
       long = 0.0;
      Map<dynamic, dynamic> values = event.snapshot.value;
      print( event.snapshot.key);
      lat =  values['lat'];
      long = values['long'];


      currentLatLong = LatLng(lat, long);
       print('latLong $currentLatLong');

       if(coordinatesList.length==0&&currentLatLong.longitude!=0)
        coordinatesList.add(currentLatLong);
      else
      dist = Geolocator.distanceBetween(
          coordinatesList.last.longitude,
          coordinatesList.last.latitude,
          long,
          lat,
      );
      print('distance $dist');
      if(!(coordinatesList.last.longitude==long && coordinatesList.last.latitude==lat) && dist>5) {
        coordinatesList.add(currentLatLong);
        _distance += dist;

        markers.remove(marker);
        marker = marker.copyWith(
            positionParam: currentLatLong
        );
        print(coordinatesList.length);
        CameraUpdate update = CameraUpdate.newCameraPosition(
            CameraPosition(target: currentLatLong, zoom: 13));
        mapController.animateCamera(update);
        polyline.copyWith(pointsParam : coordinatesList);
        coordinatesList.forEach((element) {print(element);});
        mapPolylines.add(Polyline(
          polylineId: const PolylineId('polylineid'),
          color: Colors.red,
          width: 5,
          visible: true,
          geodesic: false,
          // jointType: JointType.mitered,
          points:  coordinatesList,
        ));
        notifyListeners();

        markers.add(marker);
        notifyListeners();
      }
    });
  }

  void onDispose() {
    _locationEvent.cancel();
    mapController.dispose();

  }

}
