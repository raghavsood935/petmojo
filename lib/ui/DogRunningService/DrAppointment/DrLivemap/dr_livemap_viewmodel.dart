import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/util/Color.dart';

class DRLiveMapViewModel extends FutureViewModel<void>
    implements Initialisable {
  DRLiveMapViewModel(this.walkNumber, this.serviceProviderId, this.userId,
      this.appointmentId, this.date,this.timeElasped);

  final log = getLogger('LiveMapViewModel');
  final _navigationService = locator<NavigationService>();
  WalkNumber walkNumber;
  String serviceProviderId;
  int timeElasped;
  String userId;
  String appointmentId;
  double _distance = 0;
  DateTime date;
  final Completer<GoogleMapController> controller = Completer();
  List<LatLng> coordinatesList = [];
  final Set<Marker> markers = {};
  Set<Polyline> mapPolylines = Set<Polyline>();
  final CameraPosition initialLocation =
      const CameraPosition(target: LatLng(28.6214965, 77.2279098), zoom: 10);
  late GoogleMapController mapController;
  late Timer timer;
  late final BitmapDescriptor startIcon;
  late final BitmapDescriptor currentIcon;

  late String firebaseDocumentName;

  void navigateBack() {
    _navigationService.back();
  }

  Future<void> init() async {
    await setDocumentName();
    currentIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/marker_icon_start.png");
    startIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/marker_icon_destination.png");
    mapController = await controller.future;
    initDatabase();
  }

  Future setDocumentName() async {
    final DateTime now = date;
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    firebaseDocumentName = "$appointmentId$formatted$walkNumber";
    print("this is ");
    print(firebaseDocumentName);
    notifyListeners();
  }

  double get distance => _distance;
  String get showDistance => _distance.toStringAsFixed(2);

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
    startTimer();
  }

  void startTimer() async {
    const oneSec = Duration(seconds: 60);
    timer = Timer.periodic(oneSec, (Timer t) async {
      print("Time increased");
      timeElasped++;
      notifyListeners();
    });
  }

  void initDatabase() {
    print("how many times");
    print(appointmentId);
    FirebaseFirestore.instance
        .collection("Tracking")
        .doc(firebaseDocumentName)
        .snapshots()
        .listen((snapshot) {
      print(snapshot.exists);
      if (snapshot.exists) {
        var data = snapshot.data();

        print(data?['coordinates'] != null);
        if (data?['coordinates'] != null) {
          coordinatesList.clear();
          mapPolylines.clear();
          markers.clear();

          for (var item in data?['coordinates']) {
            print('before: $item');
            coordinatesList.add(LatLng(item['lat'], item['long']));
            print(coordinatesList.length);
          }
          mapPolylines.add(Polyline(
              polylineId: PolylineId("history"),
              points: coordinatesList,
              patterns: [PatternItem.dash(10), PatternItem.gap(10)],
              color: colors.primary,
              startCap: Cap.roundCap,
              endCap: Cap.roundCap,
              width: 3));
          markers.add(Marker(
            markerId: MarkerId(coordinatesList.first.toString()),
            position: coordinatesList.first,
            icon: startIcon,
          ));
          markers.add(Marker(
            markerId: MarkerId(coordinatesList.last.toString()),
            position: coordinatesList.last,
            icon: currentIcon,
          ));
        }
        _distance = data?['distance'] ?? 0;
        // _timeTook = data?['timeTaken'] ?? 0;
        final CameraPosition _newCameraPosition =
            CameraPosition(target: coordinatesList.last, zoom: 16);
        mapController
            .animateCamera(CameraUpdate.newCameraPosition(_newCameraPosition));
        notifyListeners();
      }
    });
  }

  void onDispose() {
    mapController.dispose();
  }
}
