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
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/enum/dog_grooming_package.dart';
import 'package:tamely/enum/dog_training_package.dart';
import 'package:tamely/enum/no_of_runs.dart';
import 'package:tamely/models/book_a_run_response.dart';
import 'package:tamely/models/coupon_response.dart';
import 'package:tamely/models/get_free_training_response.dart';
import 'package:tamely/models/get_free_walk_response.dart';
import 'package:tamely/models/get_pet_details_response.dart';
import 'package:tamely/models/params/book_a_grooming_body.dart';
import 'package:tamely/models/params/book_a_run_body.dart';
import 'package:tamely/models/params/book_a_training_body.dart';
import 'package:tamely/models/params/coupon_body.dart';
import 'package:tamely/models/params/get_payment_details_body.dart';
import 'package:tamely/models/params/set_payment_details_body.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/location_helper.dart';
import 'package:tamely/util/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'DgBookarun/dg_bookarun_view.dart';
import 'DgBookingdetails/dg_bookingdetails_view.dart';
import 'DgBookingOrderSummary/dg_booking_ordersummary_view.dart';

class DGDogGroomingBookingViewModel extends FormViewModel {
  final log = getLogger('DogRunningBookingView');
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _snackbarSerice = locator<SnackbarService>();
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

  List<bool> _currentStep = [true, false, false];
  List<Widget> _pages = [
    DGBookARunView(),
    DGBookingDetailsView(),
    DGBookingOrderSummaryView()
  ];
  List<String> _titles = [
    groomingFirstPageTitle,
    groomingSecondPageTitle,
    groomingThirdPageTitle
  ];
  List<String> _mainBtnTitles = [
    continueButton,
    continueButton,
    payButton,
  ];
  PageController _controller = PageController();
  int _currentIndex = 0;

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
    } else {
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

  bool _loading = false;
  bool get loading => _loading;

  int _givenRating = 5;
  int get givenRating => _givenRating;

  bool _isAddressValid = false;
  bool get isAddressValid => _isAddressValid;

  bool _isPhoneValid = false;
  bool get isPhoneValid => _isPhoneValid;

  void changeRating(int rating) {
    _givenRating = rating;
    notifyListeners();
  }

  Future onMainButtonPressed() async {
    if (currentIndex == 0) {
      controller.animateToPage(currentIndex + 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      await requestLocation();
      _isValid = false;
      secondPageValidation("s");
    } else if (currentIndex == 1) {
      bookARun();
      controller.animateToPage(currentIndex + 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    } else if (currentIndex == 2) {
      if (paymentMethodIndex == 0) {
        // Pay now
        if (bookingId != "") {
          _navigationService.replaceWith(
            Routes.dGPaymentView,
            arguments: DGPaymentViewArguments(
                amount: amount.toInt(), bookingId: bookingId),
          );
        } else {
          snackBarService.showSnackbar(
            message: "Please wait for the booking to be confirmed",
          );
          return;
        }
      } else {
        try {
          if (await Util.checkInternetConnectivity()) {
            GetPaymentDetailsBody getPaymentDetailsBody = GetPaymentDetailsBody(
              amount.toInt().toString(),
              bookingId,
            );
            print(getPaymentDetailsBody.toJson());
            BaseResponse<SendDataResponse> result = await runBusyFuture(
                _tamelyApi.payLaterGrooming(getPaymentDetailsBody),
                throwException: true);
            if (result.data != null && result.data!.success == true) {
              await _dialogService.showCustomDialog(
                  variant: DialogType.SuccessDialog,
                  barrierDismissible: true,
                  title: "Pay Later",
                  description:
                      "Thank you! You have successfully claimed to pay at the end of the service. Your booking is now confirmed. Enjoy your day :)",
                  data: toMyBookings);
              print("pay later successful");
            }
            notifyListeners();
          } else {
            snackBarService.showSnackbar(message: "No Internet connection");
          }
        } on ServerError catch (e) {
          log.e(e.toString());
        }
        notifyListeners();
      }
    }
    notifyListeners();
  }

  void toMyBookings() async {
    _navigationService.back();
    _navigationService.back();
    _navigationService.back();
    _navigationService.back();
    _navigationService.navigateTo(Routes.appointmentsView);
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

  // Book a run

  void checkValid() {
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

  String _description = "Bath and brush";
  String get description => _description;

  String _subtitle = "For general hygiene and healthy looking coat";
  String get subtitle => _subtitle;

  double _subTotal = 1200;
  double get subTotal => _subTotal;

  double _discount = 351;
  double get discount => _discount;

  double _amount = 849;
  double get amount => _amount;

  int _frequency = 1;
  int get frequency => _frequency;

  int _dayFrequency = 1;
  int get dayFrequency => _dayFrequency;

  DogGroomingPackage? selectedPlan = DogGroomingPackage.One;
  DogGroomingPackage? seeMoreSelectedPlan = DogGroomingPackage.One;

  void selectSeeMore(DogGroomingPackage? value) {
    if (seeMoreSelectedPlan == value) {
      seeMoreSelectedPlan = DogGroomingPackage.One;
    } else if (seeMoreSelectedPlan != value) {
      seeMoreSelectedPlan = value;
    }
    notifyListeners();
  }

  void selectPlan(DogGroomingPackage? value) {
    selectedPlan = value;
    if (selectedPlan == DogGroomingPackage.One) {
      _isValid = true;
      _description = "Bath and Brush";
      _subtitle = firstGroomingSubtitleOne;
      _amount = 849;
      _frequency = 1;
      _isOfferValid = false;
      _isOfferAvailable = false;
      _doneMultiply = false;
      _subTotal = 1200;
      _discount = 351;
    } else if (selectedPlan == DogGroomingPackage.Two) {
      _isValid = true;
      _description = "Haircut and Styling";
      _subtitle = twoGroomingSubtitleOne;
      _subTotal = 2130;
      _amount = 1640;
      _discount = 490;
      _frequency = 1;
      _isOfferValid = false;
      _isOfferAvailable = true;
      _doneMultiply = false;
    } else if (selectedPlan == DogGroomingPackage.Three) {
      _isValid = true;
      _description = "Bath and Full Haircut";
      _subtitle = threeGroomingSubtitleOne;
      _subTotal = 2900;
      _amount = 2240;
      _discount = 660;
      _frequency = 1;
      _isOfferValid = false;
      _isOfferAvailable = true;
      _doneMultiply = false;
    }
    twoPets();
    setFirstPageValid();
    notifyListeners();
  }

  // -- Offers

  bool _isOfferAvailable = true;
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

  Future<void> applyCoupon() async {
    // Dummy code apply
    String? couponCode = promoCodeController.text;
    if (couponCode.toUpperCase() == "PAWSOMEOFFER") {
      int? reducedAmountInt = _subTotal ~/ 10;
      double? reducedAmountDouble = _subTotal / 10;
      _isOfferValid = true;
      _promoCode = couponCode.toUpperCase();
      _savedAmount = reducedAmountDouble;
      _amount = amount - reducedAmountDouble;
      notifyListeners();
      return;
    }
    notifyListeners();
    couponCode = promoCodeController.text;
    if (couponCode != "") {
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
            twoPets();
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
    } else {
      snackBarService.showSnackbar(message: "Enter a Promo Code");
    }
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
    _isValid = true;
    if (hasPets) {
      if (noOfDogs == 1) {
        if (petDetailsBody.length != 1) {
          _isValid = false;
        }
      } else if (noOfDogs == 2) {
        if (petDetailsBody.length != 2) {
          _isValid = false;
        }
      }
    }
    notifyListeners();
  }

  // -- Second Page

  // -- start date

  TextEditingController datePickers =
      TextEditingController(text: "Select Date");

  bool _isDatePicked = false;
  bool get isDatePicked => _isDatePicked;

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
    }
    else{
      _isPhoneValid=true;
    }
    if (!isDatePicked) {
      _isValid = false;
      print("this is shit: $isValid");
    }
    if (_selectedWeekdayOne == false &&
        _selectedWeekdayTwo == false &&
        _selectedWeekdayThree == false &&
        _selectedWeekdayFour == false &&
        _selectedWeekdayFive == false) {
      _isValid = false;
      print("this is shit: $isValid");
    }
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

  void selectRun(NoOfRuns? value) {
    selectedRun = value;
    if (selectedRun == NoOfRuns.One) {
      _noOfDogs = 1;
    } else if (selectedRun == NoOfRuns.Two) {
      _noOfDogs = 2;
    }
    setDefaultPets();
    twoPets();
    notifyListeners();
  }

  void twoPets() {
    if (noOfDogs == 2) {
      _amount = amount * 2;
      _savedAmount = savedAmount * 2;
      _discount = discount * 2;
      _subTotal = subTotal * 2;
      _doneMultiply = true;
    } else if (noOfDogs == 1 && doneMultiply) {
      _amount = amount / 2;
      _savedAmount = savedAmount / 2;
      _discount = discount / 2;
      _subTotal = subTotal / 2;
      _doneMultiply = false;
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
        PetDetailsGroomingBody one =
            PetDetailsGroomingBody(myPets[0].petId!, "Medium");
        _petDetailsBody.add(one);
      } else if (noOfDogs == 2) {
        myPets[0].selected = true;
        PetDetailsGroomingBody one =
            PetDetailsGroomingBody(myPets[0].petId!, "Medium");
        _petDetailsBody.add(one);
        if (numberOfPets == 1) {
          PetDetailsGroomingBody one =
              PetDetailsGroomingBody("111111111111111111111111", "Medium");
          _petDetailsBody.add(one);
        } else if (numberOfPets >= 2) {
          myPets[1].selected = true;
          PetDetailsGroomingBody one =
              PetDetailsGroomingBody(myPets[1].petId!, "Medium");
          _petDetailsBody.add(one);
        }
      }
    } else if (!hasPets) {
      PetDetailsGroomingBody one =
          PetDetailsGroomingBody("111111111111111111111111", "Medium");
      _petDetailsBody.add(one);
      if (noOfDogs == 2) {
        PetDetailsGroomingBody two =
            PetDetailsGroomingBody("111111111111111111111111", "Medium");
        _petDetailsBody.add(two);
      }
    }
    setFirstPageValid();
    notifyListeners();
  }

  bool _hasPets = false;
  bool get hasPets => _hasPets;

  List<PetsClass> _myPets = [];
  List<PetsClass> get myPets => _myPets;

  int _numberOfPets = 0;
  int get numberOfPets => _numberOfPets;

  List<PetDetailsGroomingBody> _petDetailsBody = [];
  List<PetDetailsGroomingBody> get petDetailsBody => _petDetailsBody;

  void selectPet(index) {
    if (noOfDogs == 1) {
      for (var pet in myPets) {
        pet.selected = false;
      }
      _petDetailsBody.clear();
      myPets[index].selected = true;
      PetDetailsGroomingBody one =
          PetDetailsGroomingBody(myPets[index].petId!, "Medium");
      _petDetailsBody.add(one);
    }
    if (noOfDogs == 2) {
      if (petDetailsBody.length == 0) {
        PetDetailsGroomingBody one =
            PetDetailsGroomingBody(myPets[index].petId!, "Medium");
        myPets[index].selected = true;
        _petDetailsBody.add(one);
      } else if (petDetailsBody.length == 1) {
        for (var each in petDetailsBody) {
          if (each.petId != myPets[index].petId!) {
            PetDetailsGroomingBody one =
                PetDetailsGroomingBody(myPets[index].petId!, "Medium");
            myPets[index].selected = true;
            _petDetailsBody.add(one);
            break;
          }
        }
      } else if (petDetailsBody.length == 2) {
        for (var pet in myPets) {
          pet.selected = false;
        }
        _petDetailsBody.clear();
        myPets[index].selected = true;
        PetDetailsGroomingBody one =
            PetDetailsGroomingBody(myPets[index].petId!, "Medium");
        _petDetailsBody.add(one);
      }
      if (numberOfPets == 1) {
        PetDetailsGroomingBody one =
            PetDetailsGroomingBody("111111111111111111111111", "Medium");
        _petDetailsBody.add(one);
      }
    }
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
  bool _selectedWeekdaySix = false;
  bool _selectedWeekdaySeven = false;
  bool _selectedWeekdayEight = false;
  //bool _selectedWeekdaySix = false;

  bool get selectedWeekdayOne => _selectedWeekdayOne;
  bool get selectedWeekdayTwo => _selectedWeekdayTwo;
  bool get selectedWeekdayThree => _selectedWeekdayThree;
  bool get selectedWeekdayFour => _selectedWeekdayFour;
  bool get selectedWeekdayFive => _selectedWeekdayFive;
  bool get selectedWeekdaySix => _selectedWeekdaySix;
  bool get selectedWeekdaySeven => _selectedWeekdaySeven;
  bool get selectedWeekdayEight => _selectedWeekdayEight;
  //bool get selectedWeekdaySix => _selectedWeekdaySix;

  void setSelectedWeekday1() {
    _weekDayTiming = groomingTimingsOne;
    print(weekDayTiming);
    _selectedWeekdayOne = !_selectedWeekdayOne;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    _selectedWeekdaySeven = false;
    _selectedWeekdayEight = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday2() {
    _weekDayTiming = groomingTimingsTwo;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = !_selectedWeekdayTwo;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    _selectedWeekdaySeven = false;
    _selectedWeekdayEight = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday3() {
    _weekDayTiming = groomingTimingsThree;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = !_selectedWeekdayThree;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    _selectedWeekdaySeven = false;
    _selectedWeekdayEight = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday4() {
    _weekDayTiming = groomingTimingsFour;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = !_selectedWeekdayFour;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    _selectedWeekdaySeven = false;
    _selectedWeekdayEight = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday5() {
    _weekDayTiming = groomingTimingsFive;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = !_selectedWeekdayFive;
    _selectedWeekdaySix = false;
    _selectedWeekdaySeven = false;
    _selectedWeekdayEight = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday6() {
    _weekDayTiming = groomingTimingsSix;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = !_selectedWeekdaySix;
    _selectedWeekdaySeven = false;
    _selectedWeekdayEight = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday7() {
    _weekDayTiming = groomingTimingsSeven;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    _selectedWeekdaySeven = !_selectedWeekdaySeven;
    _selectedWeekdayEight = false;
    notifyListeners();
    secondPageValidation('s');
  }

  void setSelectedWeekday8() {
    _weekDayTiming = groomingTimingsEight;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    _selectedWeekdaySeven = false;
    _selectedWeekdayEight = !_selectedWeekdayEight;
    notifyListeners();
    secondPageValidation('s');
  }

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
    PetRunningLocationGroomingBody petRunningLocationBody =
        PetRunningLocationGroomingBody(
      addressLineOneController.text,
      addressLineTwoController.text,
      addressLineThreeController.text,
      addressLineOneController.text,
      addressLineOneController.text,
      lat,
      long,
    );

    //
    PackageGroomingBody packageBody =
        PackageGroomingBody(_description, _amount.toString());

    PetGroomingTimeGroomingBody sessionDetails =
        PetGroomingTimeGroomingBody(weekDayTiming);
    //
    try {
      if (await Util.checkInternetConnectivity()) {
        BookAGroomingBody bookAGroomingBody = BookAGroomingBody(
          noOfDogs,
          petDetailsBody,
          petRunningLocationBody,
          phoneController.text,
          startDateTimeStamp,
          sessionDetails,
          packageBody,
        );
        BaseResponse<BookARunResponse> result = await runBusyFuture(
            _tamelyApi.bookAGrooming(bookAGroomingBody),
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

  int _paymentMethodIndex = 0;
  int get paymentMethodIndex => _paymentMethodIndex;

  void selectPaymentMethod(int selectedPaymentMethodIndex) {
    _paymentMethodIndex = selectedPaymentMethodIndex;
    if (selectedPaymentMethodIndex == 0) {
      _mainBtnTitles[2] = payButton;
    } else {
      _mainBtnTitles[2] = continueButton;
    }
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

  @override
  void setFormStatus() {}
}

class PetsClass {
  String? name;
  String? petId;
  String? imageUrl;
  bool? selected;
  PetsClass({this.name, this.petId, this.imageUrl, this.selected});
}
