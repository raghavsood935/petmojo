import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/styles.dart';
import 'package:tamely/widgets/app_text.dart';
import 'Color.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationHelper {
  static Future<bool> checkLocationPermission() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await _showPermissionDailog();
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      await _showPermissionDailog(openSettings: true);
      return false;
    }

    bool _serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!_serviceEnabled) {
      await showDialog(
        context: StackedService.navigatorKey!.currentContext!,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: AppText.subheading(
              "Location Service Needed",
              textAlign: TextAlign.center,
            ),
            content: AppText.body1(
              "We need location service to be enabled for live tracking. Please turn on location service of your device.",
              textAlign: TextAlign.center,
            ),
            actionsAlignment: MainAxisAlignment.spaceEvenly,
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(ctx, true);
                },
                child: Container(
                  width: 100,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: colors.primary,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: colors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  Navigator.pop(ctx);
                  await Geolocator.openLocationSettings();
                },
                child: Container(
                  width: 100,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Open Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          );
        },
      );
      return false;
    }
    return true;
  }

  static Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition();
  }

  static Future<bool> checkPermissionInBg() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return Future.value(false);
    }
    if (!await Geolocator.isLocationServiceEnabled())
      return Future.value(false);
    return Future.value(true);
  }

  static Future<bool> _showPermissionDailog({bool openSettings = false}) async {
    return await showDialog(
      context: StackedService.navigatorKey!.currentContext!,
      barrierDismissible: false,
      builder: (ctx) {
        return AlertDialog(
          title: AppText.subheading(
            "Why we collect location?",
            textAlign: TextAlign.center,
          ),
          content: AppText.body1(
            "Tamely collects location data to enable live tracking even when the app is closed or not in use.",
            textAlign: TextAlign.center,
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pop(ctx, true);
              },
              child: Container(
                width: 90,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: colors.primary,
                    width: 1,
                  ),
                ),
                child: Text(
                  "Deny",
                  style: TextStyle(
                      color: colors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (openSettings) Geolocator.openAppSettings();
                Navigator.pop(ctx, true);
              },
              child: Container(
                width: 90,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Accept",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static Future<String> getAddress(LatLng location) async {
    final coordinates = new Coordinates(location.latitude, location.longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    return '${first.locality}, ${first.adminArea}';
  }

  static Widget locationNotAvailableWidget(String screenName) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          style: body1Style.copyWith(
              color: colors.kcPrimaryTextColor, height: 1.8),
          children: <TextSpan>[
            TextSpan(
                text:
                    'In order to look at $screenName near you,\nplease turn on the location access by '),
            TextSpan(
                text: 'clicking here',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: colors.primary),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Geolocator.openAppSettings()),
          ],
        ),
      ),
    );
  }

  static Future<BitmapDescriptor> bitmapDescriptorFromSvgAsset(
      String assetName) async {
    String svgString = await DefaultAssetBundle.of(
            StackedService.navigatorKey!.currentContext!)
        .loadString(assetName);
    DrawableRoot svgDrawableRoot =
        await svg.fromSvgString(svgString, svgString);

    MediaQueryData queryData =
        MediaQuery.of(StackedService.navigatorKey!.currentContext!);
    double devicePixelRatio = queryData.devicePixelRatio;
    double width = 64 * devicePixelRatio;
    double height = 64 * devicePixelRatio;

    ui.Picture picture = svgDrawableRoot.toPicture(size: Size(width, height));

    ui.Image image = await picture.toImage(width.toInt(), height.toInt());
    ByteData? bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    return BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
  }
}
