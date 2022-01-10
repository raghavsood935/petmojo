import 'dart:io';

import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/DialogType.dart';

import 'package:http/http.dart' as http;

class GlobalMethods {
  static final _dialogService = locator<DialogService>();
  static final _tamelyApi = locator<TamelyApi>();
  static final _navigationService = locator<NavigationService>();
  static final _snackBarService = locator<SnackbarService>();

  static bool checkProfileType(String typeValue) {
    if (typeValue == "human" || typeValue == "User" || typeValue == "Human") {
      return true;
    } else if (typeValue == "animal" || typeValue == "Animal") {
      return false;
    } else {
      return true;
    }
  }

  static String getProfileType(bool isHuman) {
    if (isHuman) {
      return "User";
    } else {
      return "Animal";
    }
  }

  static String utcToLocal(String utcTime) {
    // var strToDateTime = DateTime.parse(utcTime,);
    if (utcTime.length >= 23) {
      var strToDateTime =
          DateFormat("yyyy-MM-ddTHH:mm:ss.sss").parse(utcTime, true);
      final convertLocal = strToDateTime.toLocal();

      var newFormat = DateFormat("dd-MM-yyyy hh:ss aaa");
      String updateDate = newFormat.format(convertLocal);

      return updateDate;
    } else {
      return "-";
    }
  }

  static String utcToLocalTrailing(String utcTime) {
    var strToDateTime =
        DateFormat("yyyy-MM-ddTHH:mm:ss.sss").parse(utcTime, true);
    final convertLocal = strToDateTime.toLocal();

    var newFormat = DateFormat("dd-MM-yyyy-hh-ss-aaa");
    String updateDate = newFormat.format(convertLocal);

    List<String> finalTimeSplited = updateDate.split('-');

    String finalTime =
        "${finalTimeSplited[0]}/${finalTimeSplited[1]}\n${finalTimeSplited[3]}:${finalTimeSplited[4]} ${finalTimeSplited[5]}";

    return finalTime;
  }

  static Future<String> imageToLink(File file) async {
    _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
    var response = await _tamelyApi.imageToLink(file);

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      return "";
    } else if (response.data != null) {
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      return response.data!.avatarLinkInnerResponse!.image ?? "";
    } else {
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      return "";
    }
  }

  static Future<List<String>> imageToTwoLinks(File file) async {
    _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
    var response = await _tamelyApi.imageToLink(file);

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      return [];
    } else if (response.data != null) {
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      return [
        response.data!.avatarLinkInnerResponse!.image ?? "",
        response.data!.avatarLinkInnerResponse!.thumbnail ?? ""
      ];
    } else {
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      return [];
    }
  }

  static Future<String> linkToFilePath(String url, String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = "${directory.path}/${fileName}";
    final response = await http.get(Uri.parse(url));
    final file = File(filePath);

    await file.writeAsBytes(response.bodyBytes);
    return filePath;
  }
}
