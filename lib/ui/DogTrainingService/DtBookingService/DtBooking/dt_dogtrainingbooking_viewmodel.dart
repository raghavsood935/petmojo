import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/enum/dog_training_package.dart';
import 'package:tamely/enum/no_of_runs.dart';
import 'package:tamely/models/book_a_run_response.dart';
import 'package:tamely/models/coupon_response.dart';
import 'package:tamely/models/get_free_training_response.dart';
import 'package:tamely/models/get_free_walk_response.dart';
import 'package:tamely/models/get_pet_details_response.dart';
import 'package:tamely/models/params/book_a_run_body.dart';
import 'package:tamely/models/params/book_a_training_body.dart';
import 'package:tamely/models/params/coupon_body.dart';
import 'package:tamely/models/params/set_payment_details_body.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/location_helper.dart';
import 'package:tamely/util/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../enum/TrainingPackageType.dart';
import 'DtBookarun/dt_bookarun_view.dart';
import 'DtBookingdetails/dt_bookingdetails_view.dart';
import 'dt_dogtrainingbooking_view.dart';
import 'dt_dogtrainingbooking_view.dart';
import 'dt_dogtrainingbooking_view.dart';
import 'dt_dogtrainingbooking_view.dart';

class DTDogTrainingBookingViewModel extends FormViewModel {
  final log = getLogger('DogRunningBookingView');
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  Future<void> init() async {
    print('init');
    await requestLocation();
  }

  Timer? _timer;
  void dispose() {
    if (_timer != null && _timer!.isActive) _timer!.cancel();
  }

  bool? _isLocationAvailable;
  Future<void> requestLocation() async {
    _isLocationAvailable = await LocationHelper.checkLocationPermission();
    if (_isLocationAvailable != null && _isLocationAvailable!)
      LocationHelper.getCurrentLocation().then((position) =>
          setLocation(LatLng(position.latitude, position.longitude)));
    else if (_timer == null) {
      _timer = Timer.periodic(Duration(seconds: 3), (Timer t) async {
        _isLocationAvailable = await LocationHelper.checkPermissionInBg();
        if (_isLocationAvailable != null && _isLocationAvailable!) {
          t.cancel();
          LocationHelper.getCurrentLocation().then((position) =>
              setLocation(LatLng(position.latitude, position.longitude)));
        }
      });
    }
  }

  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  List<bool> _currentStep = [
    true,
    false,
  ];
  List<Widget> _pages = [
    DTBookARunView(),
    DTBookingDetailsView(),
  ];
  List<String> _titles = [
    firstPageTitle,
    secondPageTitle,
  ];
  List<String> _mainBtnTitles = [
    continueButton,
    payButton,
  ];
  PageController _controller = PageController();
  int _currentIndex = 0;
  int flag = 0;

  List<bool> get currentStep => _currentStep;
  List<Widget> get pages => _pages;
  List<String> get titles => _titles;
  List<String> get mainBtnTitles => _mainBtnTitles;
  PageController get controller => _controller;
  int get currentIndex => _currentIndex;

  void navigateBack() {
    if (currentIndex == 0) {
      _navigationService.back();
    } else if (currentIndex == 1) {
      _isValid = true;
      controller.animateToPage(currentIndex - 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    }
    notifyListeners();
  }

  void onPageChanged(i) {
    _currentIndex = i;
    currentStep.clear();
    for (int a = 0; a < 2; a++) {
      if (a <= i) {
        currentStep.insert(a, true);
      } else {
        currentStep.insert(a, false);
      }
    }
    notifyListeners();
  }

  String _bookingId = "";
  String get bookingId => _bookingId;

  bool _isValid = false;
  bool get isValid => _isValid;

  bool _isLocationValid = false;
  bool get isLocationValid => _isLocationValid;

  bool _isAddressValid = false;
  bool get isAddressValid => _isAddressValid;

  bool _isPhoneValid = false;
  bool get isPhoneValid => _isPhoneValid;

  bool _loading = false;
  bool get loading => _loading;

  // Future onMainButtonPressed() async {
  //   if (currentIndex == 0) {
  //     controller.animateToPage(currentIndex + 1,
  //         duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  //     await requestLocation();
  //     _isValid = false;
  //     secondPageValidation("s");
  //     setSelectedWeekday1();
  //   } else if (currentIndex == 1) {
  //     await bookARun();
  //     if (freeWalkAvailable && selectedPlan == DogTrainingPackage.One) {
  //       if (bookingId != "") {
  //         await setFreePaymentDetails();
  //         await setFreeWalkStatus();
  //       }
  //       _navigationService.back();
  //       _navigationService.back();
  //       _navigationService.back();
  //       _navigationService.navigateTo(Routes.appointmentsView);
  //     } else {
  //       if (bookingId != "") {
  //         _navigationService.replaceWith(
  //           Routes.dTPaymentView,
  //           arguments: DTPaymentViewArguments(
  //               amount: amount.toInt(), bookingId: bookingId),
  //         );
  //       }
  //     }
  //   }
  //   notifyListeners();
  // }

  Future onMainButtonPressed() async {
    if (currentIndex == 0) {
      controller.animateToPage(currentIndex + 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      await requestLocation();
      _isValid = false;
      secondPageValidation("s");
      setSelectedWeekday1();
    } else if (currentIndex == 1) {
      await bookARun();
      // _navigationService.navigateTo(Routes.dTPlanSelectionView,arguments: DTPlanSelectionViewArguments(address1:addressLineTwoController,address2:addressLineTwoController,subTotal:subTotal,youSave:discount,totalPrice:amount),);
      if (selectedPlan != DogTrainingPackage.One &&
          selectedPlan != DogTrainingPackage.Two &&
          selectedPlan != DogTrainingPackage.Six) {
        flag = 1;
        await Navigator.push(
            StackedService.navigatorKey!.currentContext!,
            MaterialPageRoute(
                builder: (context) => DTPlanSelectionView(
                      address1: addressLineOneController.text,
                      address2: addressLineTwoController.text,
                      subTotal: subTotal,
                      youSave: discount,
                      totalPrice: amount,
                      savedAmount: savedAmount,
                      date: pickedDate,
                      value: selectedPlan,
                      offerValid: _isOfferValid,
                      OfferAvailaible: _isOfferAvailable,
                      bookingId: bookingId,
                      noOfPetsSelected: noOfPetsSelected,
                    )));
      } else {
        if (freeWalkAvailable && selectedPlan == DogTrainingPackage.One) {
          // await bookARun();
          if (bookingId != "") {
            await setFreePaymentDetails();
            await setFreeWalkStatus();
          }
          _navigationService.back();
          _navigationService.back();
          _navigationService.back();
          _navigationService.navigateTo(Routes.appointmentsView);
        } else if (flag != 1) {
          // await bookARun();
          if (bookingId != "") {
            _navigationService.replaceWith(
              Routes.dTPaymentView,
              arguments: DTPaymentViewArguments(
                  amount: amount.toInt(), bookingId: bookingId),
            );
          }
        }
      }
    }
    notifyListeners();
  }

  Future onMainButtonPressed2(int newAmount, String newBookingId) async {
    print("book a run 2");
    print(newAmount);
    // await bookARun();
    _navigationService.replaceWith(
      Routes.dTPaymentView,
      arguments: DTPaymentViewArguments(
          amount: newAmount.toInt(), bookingId: newBookingId),
    );
    notifyListeners();
  }

  void onMyBookingsPressed() async {
    await _navigationService.navigateTo(Routes.appointmentsView);
  }

  Future<void> setFreePaymentDetails() async {
    _loading = true;
    notifyListeners();
    try {
      if (await Util.checkInternetConnectivity()) {
        SetPaymentDetailsBody setPaymentDetailsBody =
            SetPaymentDetailsBody(bookingId, "FREE RUN", 0);
        BaseResponse<SendDataResponse> result = await runBusyFuture(
            _tamelyApi.setPaymentDetailsTraining(setPaymentDetailsBody),
            throwException: true);
        notifyListeners();
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    _loading = false;
    notifyListeners();
  }

  // New Code

  TrainingPackageType? selectedPackageType = TrainingPackageType.Pro;

  void onTapPackageTypePro() {
    selectedPackageType = TrainingPackageType.Pro;
    resetPackagePro();
    notifyListeners();
  }

  void onTapPackageTypeElite() {
    selectedPackageType = TrainingPackageType.Elite;
    resetPackageElite();
    notifyListeners();
  }

  void resetPackagePro() {
    selectedPlan = DogTrainingPackage.Two;
    _isValid = true;
    _description = "Puppy Training";
    // old rate
    _subTotal = 10788;
    // new rate
    _amount = 7500;
    // save
    _discount = 1200;
    _frequency = 12;
    _dayFrequency = 1;
    _isOfferValid = false;
    _isOfferAvailable = true;
  }

  void resetPackageElite() {
    selectedPlan = DogTrainingPackage.Two;
    _isValid = true;
    _description = "Puppy Training";
    // old rate
    _subTotal = 10788;
    // new rate
    _amount = 9800;
    // save
    _discount = 1200;
    _frequency = 12;
    _dayFrequency = 1;
    _isOfferValid = false;
    _isOfferAvailable = true;
  }

  // Book a run

  void checkValid() {
    if (_freeWalkAvailable) {
      _isValid = true;
      _mainBtnTitles.remove(payButton);
      _mainBtnTitles.add('Book Now');
    } else {
      selectedPlan = DogTrainingPackage.Two;
      _isValid = true;
      _description = "Puppy Training";
      // old rate
      _subTotal = 10788;
      // new rate
      _amount = 7500;
      // save
      _discount = 1200;
      _frequency = 12;
      _dayFrequency = 1;
      _isOfferValid = false;
      _isOfferAvailable = true;
    }

    setFirstPageValid();
    notifyListeners();
  }

  // Free walk

  bool _freeWalkAvailable = false;
  bool get freeWalkAvailable => _freeWalkAvailable;

  Future<void> getFreeWalkStatus() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        BaseResponse<GetFreeTrainingResponse> result = await runBusyFuture(
            _tamelyApi.getFreeTraining(),
            throwException: true);
        if (result.data != null) {
          _freeWalkAvailable = result.data!.isFreeTrainingAvailable!;
          notifyListeners();
        }
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      getFreeWalkStatus();
      log.e(e.toString());
    }
  }

  Future<void> setFreeWalkStatus() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        BaseResponse<SendDataResponse> result = await runBusyFuture(
            _tamelyApi.setFreeTraining(),
            throwException: true);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
  }

  // Select Package

  String _description = "Free";
  String get description => _description;
  int _selected = 0;
  int get selected => _selected;

  List _boxes = [
    ['Pay Full Amount', "???????6,500/-", "", true],
    ["Monthly Billing", "???????8,700/-", "Per month", false]
  ];
  List get boxes => _boxes;

  String _orderSummaryText1 = "Basic Training";
  String get orderSummaryText1 => _orderSummaryText1;

  String _orderSummaryText2 = "24 Sessions";
  String get orderSummaryText2 => _orderSummaryText2;

  double _subTotal = 0;
  double get subTotal => _subTotal;

  double _discount = 0;
  double get discount => _discount;

  double _amount = 0;
  double get amount => _amount;

  int _frequency = 1;
  int get frequency => _frequency;

  int _dayFrequency = 1;
  int get dayFrequency => _dayFrequency;

  DogTrainingPackage? selectedPlan = DogTrainingPackage.One;
  DogTrainingPackage? seeMoreSelectedPlan = DogTrainingPackage.One;

  void selectSeeMore(DogTrainingPackage? value) {
    if (seeMoreSelectedPlan == value) {
      seeMoreSelectedPlan = DogTrainingPackage.One;
    } else if (seeMoreSelectedPlan != value) {
      seeMoreSelectedPlan = value;
    }
    notifyListeners();
  }

  void selectPlan(DogTrainingPackage? value) {
    selectedPlan = value;
    if (selectedPackageType == TrainingPackageType.Pro) {
      if (selectedPlan == DogTrainingPackage.One) {
        _isValid = true;
        _description = "Free";
        _amount = 0;
        _frequency = 1;
        _isOfferValid = false;
        _isOfferAvailable = false;
        _doneMultiply = false;
        _subTotal = 0;
        _discount = 0;
      } else if (selectedPlan == DogTrainingPackage.Two) {
        _isValid = true;
        _description = "Puppy Training";
        _subTotal = 10788;
        _amount = 7500;
        _discount = 1200;
        _frequency = 12;
        _isOfferValid = false;
        _isOfferAvailable = true;
        _doneMultiply = false;
      } else if (selectedPlan == DogTrainingPackage.Three) {
        _isValid = true;
        _description = "Basic Training";
        _subTotal = 22360;
        _amount = 13800;
        _discount = 5160;
        _frequency = 24;
        _isOfferValid = false;
        _isOfferAvailable = true;
        _doneMultiply = false;
        _noOfMonths = 2;
      } else if (selectedPlan == DogTrainingPackage.Four) {
        _isValid = true;
        _description = "Intermediate Training";
        _subTotal = 33228;
        _amount = 20400;
        _discount = 7668;
        _frequency = 36;
        _isOfferValid = false;
        _isOfferAvailable = true;
        _doneMultiply = false;
        _noOfMonths = 3;
      }
    } else if (selectedPackageType == TrainingPackageType.Elite) {
      if (selectedPlan == DogTrainingPackage.One) {
        _isValid = true;
        _description = "Free";
        _amount = 0;
        _frequency = 1;
        _isOfferValid = false;
        _isOfferAvailable = false;
        _doneMultiply = false;
        _subTotal = 0;
        _discount = 0;
      } else if (selectedPlan == DogTrainingPackage.Two) {
        _isValid = true;
        _description = "Puppy Training";
        _subTotal = 12740;
        _amount = 9800;
        _discount = 2940;
        _frequency = 12;
        _isOfferValid = false;
        _isOfferAvailable = true;
        _doneMultiply = false;
      } else if (selectedPlan == DogTrainingPackage.Three) {
        _isValid = true;
        _description = "Basic Training";
        _subTotal = 22360;
        _amount = 17200;
        _discount = 5160;
        _frequency = 24;
        _isOfferValid = false;
        _isOfferAvailable = true;
        _doneMultiply = false;
        _noOfMonths = 2;
      } else if (selectedPlan == DogTrainingPackage.Four) {
        _isValid = true;
        _description = "Intermediate Training";
        _subTotal = 33228;
        _amount = 25560;
        _discount = 7668;
        _frequency = 36;
        _isOfferValid = false;
        _isOfferAvailable = true;
        _doneMultiply = false;
        _noOfMonths = 3;
      } else if (selectedPlan == DogTrainingPackage.Five) {
        _isValid = true;
        _description = "Advance Training";
        _subTotal = 42432;
        _amount = 32640;
        _discount = 9792;
        _frequency = 48;
        _isOfferValid = false;
        _isOfferAvailable = true;
        _doneMultiply = false;
        _noOfMonths = 4;
      } else if (selectedPlan == DogTrainingPackage.Six) {
        _isValid = true;
        _description = "Premium Training";
        _subTotal = 70772;
        _amount = 54440;
        _discount = 16332;
        _frequency = 72;
        _isOfferValid = false;
        _isOfferAvailable = true;
        _doneMultiply = false;
        _noOfMonths = 6;
      }
    }

    if (myPets.length != 1) twoPets();
    setFirstPageValid();
    notifyListeners();
  }

  // -- Offers

  bool _isOfferAvailable = false;
  bool get isOfferAvailable => _isOfferAvailable;

  bool _isOfferValid = false;
  bool get isOfferValid => _isOfferValid;

  String _promoCode = "";
  String get promoCode => _promoCode;

  double _savedAmount = 0;
  double get savedAmount => _savedAmount;

  TextEditingController promoCodeController = TextEditingController();

  bool _isCouponProcessing = false;
  bool get isCouponProcessing => _isCouponProcessing;

  bool _secondOffer = true;
  bool get secondOffer => _secondOffer;

  Future<void> applyCoupon() async {
    print("entered aplly coupon");
    print(promoCodeController.text);
    print(_isCouponProcessing);
    notifyListeners();
    String? couponCode = promoCodeController.text;
    if (couponCode != "" && _isCouponProcessing == false) {
      _isCouponProcessing = true;

      try {
        if (await Util.checkInternetConnectivity()) {
          CouponBody couponBody = CouponBody(couponCode);
          BaseResponse<CouponResponse> result = await runBusyFuture(
              _tamelyApi.getCouponAmount(couponBody),
              throwException: true);
          try {
            int? reducedAmountInt = result.data!.amount;
            double? reducedAmountDouble = reducedAmountInt!.toDouble();
            _isOfferValid = true;
            _promoCode = couponCode;
            _savedAmount = reducedAmountDouble;
            _amount = amount - reducedAmountDouble;
            if (myPets.length != 1) twoPets();
            notifyListeners();
          } catch (e) {
            snackBarService.showSnackbar(message: "Invalid Promo Code");
            _isCouponProcessing = false;
            notifyListeners();
          }
        } else {
          snackBarService.showSnackbar(message: "No Internet connection");
        }
      } on ServerError catch (e) {
        _isCouponProcessing = false;
        log.e(e.toString());
      }
    } else if (couponCode == "") {
      snackBarService.showSnackbar(message: "Enter a Promo Code");
    }
    _isCouponProcessing = false;
  }

  Future<void> applyCoupon2() async {
    print("entered aplly2 coupon");
    print(promoCodeController.text);
    print(_isCouponProcessing);
    notifyListeners();
    String? couponCode = promoCodeController.text;
    if (couponCode != "" && _isCouponProcessing == false) {
      _isCouponProcessing = true;
      _secondOffer = false;
      notifyListeners();
      try {
        if (await Util.checkInternetConnectivity()) {
          CouponBody couponBody = CouponBody(couponCode);
          BaseResponse<CouponResponse> result = await runBusyFuture(
              _tamelyApi.getCouponAmount(couponBody),
              throwException: true);
          try {
            print("ENTERED HERE");
            int? reducedAmountInt = result.data!.amount;
            double? reducedAmountDouble = reducedAmountInt!.toDouble();
            print("gekl");
            _isOfferValid = true;
            _promoCode = couponCode;
            _savedAmount = reducedAmountDouble;
            _amount = amount - reducedAmountDouble;
            // twoPets();
            notifyListeners();
          } catch (e) {
            snackBarService.showSnackbar(message: "Invalid Promo Code");
            _isCouponProcessing = false;
            notifyListeners();
          }
        } else {
          snackBarService.showSnackbar(message: "No Internet connection");
        }
      } on ServerError catch (e) {
        _isCouponProcessing = false;
        log.e(e.toString());
      }
    } else if (couponCode == "") {
      snackBarService.showSnackbar(message: "Enter a Promo Code");
    }
    _isCouponProcessing = false;
  }

  Future<void> saveAppliedCoupon() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        CouponBody couponBody = CouponBody(promoCode);
        BaseResponse<SendDataResponse> result = await runBusyFuture(
            _tamelyApi.setUsedCoupon(couponBody),
            throwException: true);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
  }

  void setFirstPageValid() {
    _isValid = petDetailsBody.length > 0;
    notifyListeners();
  }

  // -- Second Page

  // -- start date

  TextEditingController datePickers =
      TextEditingController(text: "Select Date");

  bool _isDatePicked = false;
  bool get isDatePicked => _isDatePicked;

  String _time = "";
  String get time => _time;

  DateTime _pickedDate = DateTime.now();
  DateTime get pickedDate => _pickedDate;

  Future<void> selectDate(
      BuildContext context, TextEditingController tc) async {
    print("date");
    DateTime lastDate = DateTime.now().add(Duration(days: 365));
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: pickedDate,
      firstDate: DateTime.now(),
      lastDate: lastDate,
    );
    if (picked != null) {
      tc.text = "${picked.day}-${picked.month}-${picked.year}";
      if (selectedPlan != DogTrainingPackage.One) {
        if (picked.weekday != 7) {
          _pickedDate = picked;
          _isDatePicked = true;
          notifyListeners();
          secondPageValidation('d');
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Sunday is Funday!"),
                content: Text(
                    "We do not provide services on sundays. Please select a different start date."),
                actions: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            },
          );
          _pickedDate = picked;
          _isDatePicked = false;
          _time = DateFormat.jm().format(DateTime.now());
          notifyListeners();
          secondPageValidation('d');
        }
      } else {
        _pickedDate = picked;
        _isDatePicked = true;

        notifyListeners();
        secondPageValidation('d');
      }
    }
  }

  void secondPageValidation(String? value) {
    _isValid = true;
    _isPhoneValid = false;
    _isAddressValid = true;
    if (addressLineTwoController.text == "") {
      print("1");
      _isValid = false;
    } else {
      if (!companyAvailable) {
        print("2");
        _isValid = false;
      } else {
        print("3");
        _isValid = true;
      }
    }
    if (addressLineOneController.text == "") {
      print("4");
      _isValid = false;
      _isAddressValid = false;
    }
    if (phoneController.text.length < 10) {
      print("5");
      _isValid = false;
    } else {
      _isPhoneValid = true;
    }
    if (!isDatePicked) {
      _isValid = false;
      print("this is : $isValid");
    }
    // if (_selectedWeekdayOne == false &&
    //     _selectedWeekdayTwo == false &&
    //     _selectedWeekdayThree == false &&
    //     _selectedWeekdayFour == false &&
    //     _selectedWeekdayFive == false) {
    //   _isValid = false;
    //   print("this is : $isValid");
    // }
    notifyListeners();
  }

  // Pick location

  String _address = "Gurugram, Haryana";
  List<String> availableArea = [
    'Delhi',
    'Gurgaon',
    'New Delhi',
    'Faridabad',
    'Noida',
    'Ghaziabad',
    'Gurugram'
  ];
  String get address => _address;
  bool _companyAvailable = true;
  bool get companyAvailable => _companyAvailable;

  void changeAddress() async {
    List result = await _navigationService.navigateTo(Routes.locationPicker);
    if (result[1]) {
      setLocation(result[0]);
    }
    notifyListeners();
  }

  double _lat = 0.0;
  double _long = 0.0;

  double get lat => _lat;
  double get long => _long;

  Future<void> setLocation(LatLng location) async {
    if (location.latitude != 0) {
      await getAddress(Coordinates(location.latitude, location.longitude))
          .then((value) {
        _address = value;
        addressLineTwoController.text = address;
        _lat = location.latitude;
        _long = location.longitude;
        secondPageValidation('s');
        notifyListeners();
      });
    }
  }

  Future<String> getAddress(Coordinates coordinates) async {
    var address =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    print("this is subAdminArea ${address.first.subAdminArea}");
    print("this is locality ${address.first.locality}");
    if (availableArea.contains(address.first.subAdminArea) ||
        availableArea.contains(address.first.locality)) {
      _companyAvailable = true;
    } else {
      _companyAvailable = false;
    }
    notifyListeners();
    if (companyAvailable) {
      print('Available');
    } else {
      print('Not Available');
      snackBarService.showSnackbar(message: "Select a different location");
    }
    return '${address.first.adminArea}, ${address.first.countryName}';
  }

  NoOfRuns? selectedRun = NoOfRuns.One;

  int _noOfDogs = 1;
  int get noOfDogs => _noOfDogs;

  bool _doneMultiply = false;
  bool get doneMultiply => _doneMultiply;
  int _noOfPetsSelected = 1;
  int get noOfPetsSelected => _noOfPetsSelected;

  int _noOfMonths = 0;
  int get noOfMonths => _noOfMonths;

  void selectRun(NoOfRuns? value) {
    selectedRun = value;
    print("selected run");
    print(selectedRun);
    if (selectedRun == NoOfRuns.One) {
      _noOfDogs = 1;
    } else if (selectedRun == NoOfRuns.Two) {
      _noOfDogs = 2;
    }
    setDefaultPets();
    if (myPets.length != 1) twoPets();
    notifyListeners();
  }

  void twoPets() {
    myPets.forEach((pet) {});
    // (noOfDogs == 2 )||
    if ((myPets[0].selected == true && myPets[1].selected == true) &&
        !_doneMultiply) {
      _amount = amount * 2;
      _savedAmount = savedAmount * 2;
      _discount = discount * 2;
      _subTotal = subTotal * 2;
      _doneMultiply = true;
      _noOfPetsSelected = 2;
    }
    // (noOfDogs == 1) && donemultiply
    else if (((myPets[0].selected == true && myPets[1].selected == false) ||
            (myPets[0].selected == false && myPets[1].selected == true)) &&
        _doneMultiply) {
      _amount = amount / 2;
      _savedAmount = savedAmount / 2;
      _discount = discount / 2;
      _subTotal = subTotal / 2;
      _doneMultiply = false;
      _noOfPetsSelected = 1;
    }
    notifyListeners();
  }

  void setDefaultPets() {
    _petDetailsBody.clear();
    if (hasPets) {
      for (var pet in myPets) {
        pet.selected = false;
      }
      if (noOfDogs == 1) {
        myPets[0].selected = true;
        PetDetailsTrainingBody one =
            PetDetailsTrainingBody(myPets[0].petId!, "Medium");
        _petDetailsBody.add(one);
      } else if (noOfDogs == 2) {
        myPets[0].selected = true;
        PetDetailsTrainingBody one =
            PetDetailsTrainingBody(myPets[0].petId!, "Medium");
        _petDetailsBody.add(one);
        if (numberOfPets == 1) {
          PetDetailsTrainingBody one =
              PetDetailsTrainingBody("111111111111111111111111", "Medium");
          _petDetailsBody.add(one);
        } else if (numberOfPets >= 2) {
          myPets[1].selected = true;
          PetDetailsTrainingBody one =
              PetDetailsTrainingBody(myPets[1].petId!, "Medium");
          _petDetailsBody.add(one);
        }
      }
    } else if (!hasPets) {
      PetDetailsTrainingBody one =
          PetDetailsTrainingBody("111111111111111111111111", "Medium");
      _petDetailsBody.add(one);
      if (noOfDogs == 2) {
        PetDetailsTrainingBody two =
            PetDetailsTrainingBody("111111111111111111111111", "Medium");
        _petDetailsBody.add(two);
      }
    }
    setFirstPageValid();
    notifyListeners();
  }

  void paymentPlan(String text) {
    if (text == "Pay Full Amount") {
      _boxes[0][3] = true;
      _boxes[1][3] = false;
      _selected = 0;
    } else {
      _boxes[1][3] = true;
      _boxes[0][3] = false;
      _selected = 1;
    }

    notifyListeners();
  }

  bool _hasPets = false;
  bool get hasPets => _hasPets;

  List<PetsClass> _myPets = [];
  List<PetsClass> get myPets => _myPets;

  int _numberOfPets = 0;
  int get numberOfPets => _numberOfPets;

  List<PetDetailsTrainingBody> _petDetailsBody = [];
  List<PetDetailsTrainingBody> get petDetailsBody => _petDetailsBody;

  void selectPet(index) {
    print("selected pet $index");
    // if (noOfDogs == 1) {
    //   for (var pet in myPets) {
    //     pet.selected = false;
    //   }
    //   _petDetailsBody.clear();
    //   myPets[index].selected = true;
    //   PetDetailsTrainingBody one =
    //       PetDetailsTrainingBody(myPets[index].petId!, "Medium");
    //   _petDetailsBody.add(one);
    // }
    // if (noOfDogs == 2) {
    //   if (petDetailsBody.length == 0) {
    //     PetDetailsTrainingBody one =
    //         PetDetailsTrainingBody(myPets[index].petId!, "Medium");
    //     myPets[index].selected = true;
    //     _petDetailsBody.add(one);
    //   } else if (petDetailsBody.length == 1) {
    //     for (var each in petDetailsBody) {
    //     if (each.petId != myPets[index].petId!) {
    //       PetDetailsTrainingBody one =
    //           PetDetailsTrainingBody(myPets[index].petId!, "Medium");
    //       myPets[index].selected = true;
    //       _petDetailsBody.add(one);
    //       break;
    //     }
    //   }
    // } else if (petDetailsBody.length == 2) {
    //   for (var pet in myPets) {
    //     pet.selected = false;
    //   }
    //     _petDetailsBody.clear();
    //     myPets[index].selected = true;
    //     PetDetailsTrainingBody one =
    //         PetDetailsTrainingBody(myPets[index].petId!, "Medium");
    //     _petDetailsBody.add(one);
    //   }
    //   if (numberOfPets == 1) {
    //     PetDetailsTrainingBody one =
    //         PetDetailsTrainingBody("111111111111111111111111", "Medium");
    //     _petDetailsBody.add(one);
    //   }
    // }
    _noOfDogs = myPets.length;
    _petDetailsBody.clear();
    myPets[index].selected = !(myPets[index].selected ?? false);
    myPets.forEach((pet) {
      if (pet.selected ?? false) {
        PetDetailsTrainingBody one =
            PetDetailsTrainingBody(pet.petId!, "Medium");
        _petDetailsBody.add(one);
      }
    });
    if (myPets.length != 1) twoPets();
    setFirstPageValid();
    notifyListeners();
  }

  TextEditingController specialInstructionsController = TextEditingController();
  TextEditingController addressLineOneController = TextEditingController();
  TextEditingController addressLineTwoController = TextEditingController();
  TextEditingController addressLineThreeController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController alternateNameController = TextEditingController();
  TextEditingController alternatePhoneController = TextEditingController();

  bool _selectedDetailOne = false;
  bool _selectedDetailTwo = false;
  bool _selectedDetailThree = false;
  bool _selectedDetailFour = false;
  bool _selectedDetailFive = false;

  bool get selectedDetailOne => _selectedDetailOne;
  bool get selectedDetailTwo => _selectedDetailTwo;
  bool get selectedDetailThree => _selectedDetailThree;
  bool get selectedDetailFour => _selectedDetailFour;
  bool get selectedDetailFive => _selectedDetailFive;

  void setSelectedDetail1(bool? value) {
    _selectedDetailOne = !_selectedDetailOne;
    notifyListeners();
  }

  void setSelectedDetail2(bool? value) {
    _selectedDetailTwo = !_selectedDetailTwo;
    notifyListeners();
  }

  void setSelectedDetail3(bool? value) {
    _selectedDetailThree = !_selectedDetailThree;
    notifyListeners();
  }

  void setSelectedDetail4(bool? value) {
    _selectedDetailFour = !_selectedDetailFour;
    notifyListeners();
  }

  void setSelectedDetail5(bool? value) {
    _selectedDetailFive = !_selectedDetailFive;
    notifyListeners();
  }

  // Booking details

  // void thirdPageValidation() {
  //   _isValid = true;
  //   if (!isDatePicked) {
  //     _isValid = false;
  //   }
  //   // if (_frequency != 1) {
  //   //   if (_selectedDay1 == false &&
  //   //       _selectedDay2 == false &&
  //   //       _selectedDay3 == false &&
  //   //       _selectedDay4 == false &&
  //   //       _selectedDay5 == false &&
  //   //       _selectedDay6 == false &&
  //   //       _selectedDay7 == false) {
  //   //     _isValid = false;
  //   //   }
  //   // }
  //   if (_selectedWeekdayOne == false &&
  //       _selectedWeekdayTwo == false &&
  //       _selectedWeekdayThree == false &&
  //       _selectedWeekdayFour == false &&
  //       _selectedWeekdayFive == false) {
  //     _isValid = false;
  //   }
  //   if (dayFrequency == 2) {
  //     if (_selectedWeekendOne == false &&
  //         _selectedWeekendTwo == false &&
  //         _selectedWeekendThree == false &&
  //         _selectedWeekendFour == false &&
  //         _selectedWeekendFive == false) {
  //       _isValid = false;
  //     }
  //   }
  // }

  // -- Days off

  bool _selectedDay1 = false;
  bool _selectedDay2 = false;
  bool _selectedDay3 = false;
  bool _selectedDay4 = false;
  bool _selectedDay5 = false;
  bool _selectedDay6 = false;
  bool _selectedDay7 = false;

  bool get selectedDay1 => _selectedDay1;
  bool get selectedDay2 => _selectedDay2;
  bool get selectedDay3 => _selectedDay3;
  bool get selectedDay4 => _selectedDay4;
  bool get selectedDay5 => _selectedDay5;
  bool get selectedDay6 => _selectedDay6;
  bool get selectedDay7 => _selectedDay7;

  void setSelectedDay1() {
    _selectedDay1 = !_selectedDay1;
    _selectedDay2 = false;
    _selectedDay3 = false;
    _selectedDay4 = false;
    _selectedDay5 = false;
    _selectedDay6 = false;
    _selectedDay7 = false;
    getOffDate();
    notifyListeners();
    //thirdPageValidation();
  }

  void setSelectedDay2() {
    _selectedDay1 = false;
    _selectedDay2 = !_selectedDay2;
    _selectedDay3 = false;
    _selectedDay4 = false;
    _selectedDay5 = false;
    _selectedDay6 = false;
    _selectedDay7 = false;
    getOffDate();
    notifyListeners();
    //thirdPageValidation();
  }

  void setSelectedDay3() {
    _selectedDay1 = false;
    _selectedDay2 = false;
    _selectedDay3 = !_selectedDay3;
    _selectedDay4 = false;
    _selectedDay5 = false;
    _selectedDay6 = false;
    _selectedDay7 = false;
    getOffDate();
    notifyListeners();
    //thirdPageValidation();
  }

  void setSelectedDay4() {
    _selectedDay1 = false;
    _selectedDay2 = false;
    _selectedDay3 = false;
    _selectedDay4 = !_selectedDay4;
    _selectedDay5 = false;
    _selectedDay6 = false;
    _selectedDay7 = false;
    getOffDate();
    notifyListeners();
    //thirdPageValidation();
  }

  void setSelectedDay5() {
    _selectedDay1 = false;
    _selectedDay2 = false;
    _selectedDay3 = false;
    _selectedDay4 = false;
    _selectedDay5 = !_selectedDay5;
    _selectedDay6 = false;
    _selectedDay7 = false;
    getOffDate();
    notifyListeners();
    //thirdPageValidation();
  }

  void setSelectedDay6() {
    _selectedDay1 = false;
    _selectedDay2 = false;
    _selectedDay3 = false;
    _selectedDay4 = false;
    _selectedDay5 = false;
    _selectedDay6 = !_selectedDay6;
    _selectedDay7 = false;
    getOffDate();
    notifyListeners();
    //thirdPageValidation();
  }

  void setSelectedDay7() {
    _selectedDay1 = false;
    _selectedDay2 = false;
    _selectedDay3 = false;
    _selectedDay4 = false;
    _selectedDay5 = false;
    _selectedDay6 = false;
    _selectedDay7 = !_selectedDay7;
    getOffDate();
    notifyListeners();
    //thirdPageValidation();
  }

  DateTime _offDate = DateTime.now();
  DateTime get offDate => _offDate;

  void getOffDate() {
    String dayPickedDate = DateFormat('EEEE').format(pickedDate);
    String offDateString = "";

    if (selectedDay1) {
      offDateString = "Sunday";
    } else if (selectedDay2) {
      offDateString = "Monday";
    } else if (selectedDay3) {
      offDateString = "Tuesday";
    } else if (selectedDay4) {
      offDateString = "Wednesday";
    } else if (selectedDay5) {
      offDateString = "Thursday";
    } else if (selectedDay6) {
      offDateString = "Friday";
    } else if (selectedDay7) {
      offDateString = "Saturday";
    }
    if (dayPickedDate == offDateString) {
      _selectedDay1 = false;
      _selectedDay2 = false;
      _selectedDay3 = false;
      _selectedDay4 = false;
      _selectedDay5 = false;
      _selectedDay6 = false;
      _selectedDay7 = false;
    } else {
      for (int a = 1; a <= 7; a++) {
        DateTime newDate = pickedDate.add(Duration(days: a));
        String dayNewDate = DateFormat('EEEE').format(newDate);
        if (dayNewDate == offDateString) {
          _offDate = newDate;
        }
      }
    }
  }

  // -- Timings - Weekdays

  String _weekDayTiming = "";
  String get weekDayTiming => _weekDayTiming;

  bool _selectedWeekdayOne = false;
  bool _selectedWeekdayTwo = false;
  bool _selectedWeekdayThree = false;
  bool _selectedWeekdayFour = false;
  bool _selectedWeekdayFive = false;
  //bool _selectedWeekdaySix = false;

  bool get selectedWeekdayOne => _selectedWeekdayOne;
  bool get selectedWeekdayTwo => _selectedWeekdayTwo;
  bool get selectedWeekdayThree => _selectedWeekdayThree;
  bool get selectedWeekdayFour => _selectedWeekdayFour;
  bool get selectedWeekdayFive => _selectedWeekdayFive;
  //bool get selectedWeekdaySix => _selectedWeekdaySix;

  void setSelectedWeekday1() {
    _weekDayTiming = timingsOne;
    print(weekDayTiming);
    _selectedWeekdayOne = !_selectedWeekdayOne;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    //_selectedWeekdaySix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday2() {
    _weekDayTiming = timingsTwo;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = !_selectedWeekdayTwo;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    //_selectedWeekdaySix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday3() {
    _weekDayTiming = timingsThree;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = !_selectedWeekdayThree;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    // _selectedWeekdaySix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday4() {
    _weekDayTiming = timingsFour;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = !_selectedWeekdayFour;
    _selectedWeekdayFive = false;
    //_selectedWeekdaySix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday5() {
    _weekDayTiming = timingsFive;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = !_selectedWeekdayFive;
    //_selectedWeekdaySix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  // void setSelectedWeekday6() {
  //   _weekDayTiming = timingsSix;
  //   _selectedWeekdayOne = false;
  //   _selectedWeekdayTwo = false;
  //   _selectedWeekdayThree = false;
  //   _selectedWeekdayFour = false;
  //   _selectedWeekdayFive = false;
  //   _selectedWeekdaySix = !_selectedWeekdaySix;
  //   notifyListeners();
  //   thirdPageValidation();
  // }

  // -- Timings - Weekends

  String _weekEndTiming = "";
  String get weekEndTiming => _weekEndTiming;

  bool _selectedWeekendOne = false;
  bool _selectedWeekendTwo = false;
  bool _selectedWeekendThree = false;
  bool _selectedWeekendFour = false;
  bool _selectedWeekendFive = false;
  //bool _selectedWeekendSix = false;

  bool get selectedWeekendOne => _selectedWeekendOne;
  bool get selectedWeekendTwo => _selectedWeekendTwo;
  bool get selectedWeekendThree => _selectedWeekendThree;
  bool get selectedWeekendFour => _selectedWeekendFour;
  bool get selectedWeekendFive => _selectedWeekendFive;
  //bool get selectedWeekendSix => _selectedWeekendSix;

  void setSelectedWeekend1() {
    _weekEndTiming = timingsOne;
    _selectedWeekendOne = !_selectedWeekendOne;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = false;
    _selectedWeekendFour = false;
    _selectedWeekendFive = false;
    //_selectedWeekendSix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekend2() {
    _weekEndTiming = timingsTwo;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = !_selectedWeekendTwo;
    _selectedWeekendThree = false;
    _selectedWeekendFour = false;
    _selectedWeekendFive = false;
    //_selectedWeekendSix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekend3() {
    _weekEndTiming = timingsThree;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = !_selectedWeekendThree;
    _selectedWeekendFour = false;
    _selectedWeekendFive = false;
    //_selectedWeekendSix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekend4() {
    _weekEndTiming = timingsFour;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = false;
    _selectedWeekendFour = !_selectedWeekendFour;
    _selectedWeekendFive = false;
    //_selectedWeekendSix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekend5() {
    _weekEndTiming = timingsFive;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = false;
    _selectedWeekendFour = false;
    _selectedWeekendFive = !_selectedWeekendFive;
    //_selectedWeekendSix = false;
    notifyListeners();
    secondPageValidation('s');
  }

  // void setSelectedWeekend6() {
  //   _weekEndTiming = timingsSix;
  //   _selectedWeekendOne = false;
  //   _selectedWeekendTwo = false;
  //   _selectedWeekendThree = false;
  //   _selectedWeekendFour = false;
  //   _selectedWeekendFive = false;
  //   _selectedWeekendSix = !_selectedWeekendSix;
  //   notifyListeners();
  //   thirdPageValidation();
  // }

  bool _previousRunnersAvailable = false;

  bool get previousRunnersAvailable => _previousRunnersAvailable;

  List<PetsClass> _previousRunners = [
    PetsClass(
      name: "Joeylene Rivera",
      imageUrl:
          "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
      selected: false,
    ),
    PetsClass(
      name: "Joeylene Rivera",
      imageUrl:
          "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
      selected: false,
    ),
    PetsClass(
      name: "Joeylene Rivera",
      imageUrl:
          "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
      selected: false,
    ),
  ];

  List<PetsClass> get previousRunners => _previousRunners;

  selectPreviousWalker(int index) {
    for (var each in _previousRunners) {
      each.selected = false;
    }
    _previousRunners[index].selected = !_previousRunners[index].selected!;
    notifyListeners();
  }

  Future<void> getPets() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        BaseResponse<GetPetDetailsResponse> result = await runBusyFuture(
            _tamelyApi.getPetDetails(),
            throwException: true);
        List<PetDetailsResponse> petsList = result.data!.pets!;

        if (petsList.length != 0) {
          _myPets.clear();
          _hasPets = true;
          for (var each in petsList) {
            PetInfoResponse petsData = each.pet!;
            PetsClass petsClass = PetsClass(
              name: petsData.petName!,
              petId: petsData.petId!,
              imageUrl: "assets/images/dog_running.png",
              selected: false,
            );
            _myPets.add(petsClass);
          }
          _numberOfPets = myPets.length;
        } else if (petsList.length == 0) {
          _hasPets = false;
        }
        selectRun(selectedRun);
        notifyListeners();
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  Future bookARun() async {
    _loading = true;
    notifyListeners();
    //
    DateTime startDateConverted =
        pickedDate.add(Duration(hours: 5, minutes: 30));
    print(startDateConverted);
    int startDateTimeStamp = startDateConverted.millisecondsSinceEpoch;
    print(startDateTimeStamp);
    //
    int offDateTimeStamp = 0;
    if (frequency != 1) {
      DateTime offDateConverted = offDate.add(Duration(hours: 5, minutes: 30));
      offDateTimeStamp = offDateConverted.millisecondsSinceEpoch;
    }

    //

    //

    // empty
    PetRunningLocationTrainingBody petRunningLocationBody =
        PetRunningLocationTrainingBody(
      addressLineOneController.text,
      addressLineTwoController.text,
      addressLineThreeController.text,
      addressLineOneController.text,
      addressLineOneController.text,
      lat,
      long,
    );

    //
    PackageTrainingBody packageBody = PackageTrainingBody(
        _description, _amount.toInt().toString(), _frequency);

    //
    try {
      if (await Util.checkInternetConnectivity()) {
        _noOfDogs = petDetailsBody.length;
        print('assigning size as ${petDetailsBody.length}');
        BookATrainingBody bookATrainingBody = BookATrainingBody(
          noOfDogs,
          petDetailsBody,
          petRunningLocationBody,
          phoneController.text,
          startDateTimeStamp,
          weekDayTiming,
          packageBody,
        );
        BaseResponse<BookARunResponse> result = await runBusyFuture(
            _tamelyApi.bookATraining(bookATrainingBody),
            throwException: true);
        if (result.data != null) {
          _bookingId = result.data!.bookingId!;
        }
        notifyListeners();
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    _loading = false;
    notifyListeners();
  }

  void openWhatsapp() async {
    final _snackBarService = locator<SnackbarService>();
    String whatsappNumber = helpWhatsappNumber;
    String messageToSend = whatsappMessageText;
    String androidUrl =
        "whatsapp://send?phone=$whatsappNumber&text=$messageToSend";
    String iosUrl = "https://wa.me/$whatsappNumber?text=$messageToSend";
    if (Platform.isIOS) {
      if (await canLaunch(iosUrl)) {
        await launch(iosUrl);
      } else {
        _snackBarService.showSnackbar(message: "Could not open whatsapp");
      }
    } else {
      if (await canLaunch(androidUrl)) {
        await launch(androidUrl);
      } else {
        _snackBarService.showSnackbar(message: "Could not open whatsapp");
      }
    }
  }

  Future showSpecialOfferDialog() async {
    var result = await _dialogService.showCustomDialog(
      variant: DialogType.TrainingOfferDialog,
      barrierDismissible: true,
      takesInput: true,
      title: "You are eligible for our special offer",
      description: "Select a package in the next screen for Discounted pricing",
    );

    if (result != null && result.confirmed) {
      switch (result.data) {
        case 2:
          {
            selectPlan(DogTrainingPackage.Two);
            break;
          }
        case 3:
          {
            selectPlan(DogTrainingPackage.Three);
            break;
          }
        case 4:
          {
            selectPlan(DogTrainingPackage.Four);
            break;
          }
        case 5:
          {
            selectPlan(DogTrainingPackage.Five);
            break;
          }
      }
      notifyListeners();
    }
  }

  Future callCS() async {
    try {
      launch("tel://9009004473");
    } catch (e) {
      snackBarService.showSnackbar(message: "Could not call 9009004473");
    }
  }

  @override
  void setFormStatus() {}

  void createNewPet() async {
    var result = await _navigationService.navigateTo(
      Routes.createAnimalProfileNewPageOne,
      arguments: CreateAnimalProfileNewPageOneArguments(isFromStart: false),
    );
  }
}

class PetsClass {
  String? name;
  String? petId;
  String? imageUrl;
  bool? selected;
  PetsClass({this.name, this.petId, this.imageUrl, this.selected});
}
