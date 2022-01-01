import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/widgets/app_text.dart';
import 'Color.dart';

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
}
