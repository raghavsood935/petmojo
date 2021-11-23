import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:tamely/models/params/change_runone_status_body.dart';
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
import 'dart:io';

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

  int _distance = 5;
  int _timeTook = 25;

  int get distance => _distance;
  int get timeTook => _timeTook;

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
