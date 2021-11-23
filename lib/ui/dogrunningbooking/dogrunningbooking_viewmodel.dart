import 'package:collection/src/iterable_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/dog_running_package.dart';
import 'package:tamely/enum/no_of_runs.dart';
import 'package:tamely/models/get_pet_details_response.dart';
import 'package:tamely/models/params/book_a_run_body.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/ui/dogrunningbooking/selectpackage/selectpackage_view.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/utils.dart';
import 'bookarun/bookarun_view.dart';
import 'bookingdetails/bookingdetails_view.dart';

class DogRunningBookingViewModel extends FormViewModel {
  final log = getLogger('DogRunningBookingView');
  final _navigationService = locator<NavigationService>();

  DogRunningBookingViewModel();

  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  void navigateBack() {
    _navigationService.back();
  }

  List<bool> _currentStep = [true, false, false];
  List<Widget> _pages = [
    BookARunView(),
    BookingDetailsView(),
    SelectPackageView()
  ];
  List<String> _titles = [
    bookARunTitle,
    bookingDetailsTitle,
    selectPackageTitle
  ];
  List<String> _mainBtnTitles = [continueButton, continueButton, payButton];
  PageController _controller = PageController();
  int _currentIndex = 0;

  List<bool> get currentStep => _currentStep;
  List<Widget> get pages => _pages;
  List<String> get titles => _titles;
  List<String> get mainBtnTitles => _mainBtnTitles;
  PageController get controller => _controller;
  int get currentIndex => _currentIndex;

  void onPageChanged(i) {
    _currentIndex = i;
    currentStep.clear();
    for (int a = 0; a < 3; a++) {
      if (a <= i) {
        currentStep.insert(a, true);
      } else {
        currentStep.insert(a, false);
      }
    }
    notifyListeners();
  }

  void onMainButtonPressed() {
    if (currentIndex < 2) {
      controller.animateToPage(currentIndex + 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    } else if (currentIndex == 2) {
      bookARun();
      //_navigationService.replaceWith(Routes.groupInfoView);
    }
    notifyListeners();
  }

  // Book a run

  NoOfRuns? selectedRun = NoOfRuns.One;

  int _noOfDogs = 1;
  int get noOfDogs => _noOfDogs;

  void selectRun(NoOfRuns? value) {
    selectedRun = value;
    if (selectedRun == NoOfRuns.One) {
      _noOfDogs = 1;
    } else if (selectedRun == NoOfRuns.Two) {
      _noOfDogs = 2;
    }
    notifyListeners();
  }

  bool _hasPets = false;
  bool get hasPets => _hasPets;

  static List<String> _dogsId = [""];
  List<String> get dogsId => _dogsId;

  static List<String> _dogsOwned = ["Dog"];
  List<String> get dogsOwned => _dogsOwned;

  String selectedDogOne = _dogsOwned[0];
  String selectedDogOneId = _dogsId[0];

  selectDogOne(String? newValue) {
    selectedDogOne = newValue!;
    dogsOwned.mapIndexed((index, value) {
      if (selectedDogOne == value) {
        selectedDogOneId = dogsId[index];
      }
    });
    notifyListeners();
  }

  String selectedDogTwo = _dogsOwned[0];
  String selectedDogTwoId = _dogsId[0];

  selectDogTwo(String? newValue) {
    selectedDogTwo = newValue!;
    dogsOwned.mapIndexed((index, value) {
      if (selectedDogTwo == value) {
        selectedDogTwoId = dogsId[index];
      }
    });
    notifyListeners();
  }

  static List<String> _petSize = [
    godSizeSmallLabel,
    godSizeMediumLabel,
    godSizeLargeLabel,
    godSizeGiantLabel,
  ];
  List<String> get petSize => _petSize;

  String selectedSizeOne = _petSize[0];

  selectSizeOne(String? newValue) {
    selectedSizeOne = newValue!;
    notifyListeners();
  }

  String selectedSizeTwo = _petSize[0];

  selectSizeTwo(String? newValue) {
    selectedSizeTwo = newValue!;
    notifyListeners();
  }

  TextEditingController specialInstructionsController = TextEditingController();
  TextEditingController addressLineOneController = TextEditingController();
  TextEditingController addressLineTwoController = TextEditingController();
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

  // Select Package

  String _description = "Once";
  String get description => _description;

  int _amount = 300;
  int get amount => _amount;

  int _frequency = 1;
  int get frequency => _frequency;

  int _dayFrequency = 1;
  int get dayFrequency => _dayFrequency;

  DogRunningPackage? selectedPlan = DogRunningPackage.One;

  void selectPlan(DogRunningPackage? value) {
    selectedPlan = value;
    if (selectedPlan == DogRunningPackage.One) {
      _description = "Once";
      _amount = 300;
      _frequency = 1;
      _dayFrequency = 1;
    } else if (selectedPlan == DogRunningPackage.Two) {
      _description = "Weekly";
      _amount = 1500;
      _frequency = 7;
      _dayFrequency = 1;
    } else if (selectedPlan == DogRunningPackage.Three) {
      _description = "Weekly";
      _amount = 2500;
      _frequency = 7;
      _dayFrequency = 2;
    } else if (selectedPlan == DogRunningPackage.Four) {
      _description = "Monthly";
      _amount = 4500;
      _frequency = 30;
      _dayFrequency = 1;
    } else if (selectedPlan == DogRunningPackage.Five) {
      _description = "Monthly";
      _amount = 8500;
      _frequency = 30;
      _dayFrequency = 2;
    }
    notifyListeners();
  }

  // -- start date

  TextEditingController datePickers = TextEditingController();

  DateTime _pickedDate = DateTime.now();

  DateTime get pickedDate => _pickedDate;

  Future<void> selectDate(
      BuildContext context, TextEditingController tc) async {
    DateTime lastDate = DateTime.now().add(Duration(days: 365));
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: pickedDate,
      firstDate: DateTime.now(),
      lastDate: lastDate,
    );
    if (picked != null) {
      print(picked);
      tc.text = "${picked.day}-${picked.month}-${picked.year}";
      _pickedDate = picked;
      notifyListeners();
    }
  }

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

  bool get selectedWeekdayOne => _selectedWeekdayOne;
  bool get selectedWeekdayTwo => _selectedWeekdayTwo;
  bool get selectedWeekdayThree => _selectedWeekdayThree;
  bool get selectedWeekdayFour => _selectedWeekdayFour;
  bool get selectedWeekdayFive => _selectedWeekdayFive;
  bool get selectedWeekdaySix => _selectedWeekdaySix;

  void setSelectedWeekday1() {
    _weekDayTiming = timingsOne;
    print(weekDayTiming);
    _selectedWeekdayOne = !_selectedWeekdayOne;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    notifyListeners();
  }

  void setSelectedWeekday2() {
    _weekDayTiming = timingsTwo;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = !_selectedWeekdayTwo;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    notifyListeners();
  }

  void setSelectedWeekday3() {
    _weekDayTiming = timingsThree;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = !_selectedWeekdayThree;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    notifyListeners();
  }

  void setSelectedWeekday4() {
    _weekDayTiming = timingsFour;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = !_selectedWeekdayFour;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = false;
    notifyListeners();
  }

  void setSelectedWeekday5() {
    _weekDayTiming = timingsFive;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = !_selectedWeekdayFive;
    _selectedWeekdaySix = false;
    notifyListeners();
  }

  void setSelectedWeekday6() {
    _weekDayTiming = timingsSix;
    _selectedWeekdayOne = false;
    _selectedWeekdayTwo = false;
    _selectedWeekdayThree = false;
    _selectedWeekdayFour = false;
    _selectedWeekdayFive = false;
    _selectedWeekdaySix = !_selectedWeekdaySix;
    notifyListeners();
  }

  // -- Timings - Weekends

  String _weekEndTiming = "";
  String get weekEndTiming => _weekEndTiming;

  bool _selectedWeekendOne = false;
  bool _selectedWeekendTwo = false;
  bool _selectedWeekendThree = false;
  bool _selectedWeekendFour = false;
  bool _selectedWeekendFive = false;
  bool _selectedWeekendSix = false;

  bool get selectedWeekendOne => _selectedWeekendOne;
  bool get selectedWeekendTwo => _selectedWeekendTwo;
  bool get selectedWeekendThree => _selectedWeekendThree;
  bool get selectedWeekendFour => _selectedWeekendFour;
  bool get selectedWeekendFive => _selectedWeekendFive;
  bool get selectedWeekendSix => _selectedWeekendSix;

  void setSelectedWeekend1() {
    _weekEndTiming = timingsOne;
    _selectedWeekendOne = !_selectedWeekendOne;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = false;
    _selectedWeekendFour = false;
    _selectedWeekendFive = false;
    _selectedWeekendSix = false;
    notifyListeners();
  }

  void setSelectedWeekend2() {
    _weekEndTiming = timingsTwo;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = !_selectedWeekendTwo;
    _selectedWeekendThree = false;
    _selectedWeekendFour = false;
    _selectedWeekendFive = false;
    _selectedWeekendSix = false;
    notifyListeners();
  }

  void setSelectedWeekend3() {
    _weekEndTiming = timingsThree;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = !_selectedWeekendThree;
    _selectedWeekendFour = false;
    _selectedWeekendFive = false;
    _selectedWeekendSix = false;
    notifyListeners();
  }

  void setSelectedWeekend4() {
    _weekEndTiming = timingsFour;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = false;
    _selectedWeekendFour = !_selectedWeekendFour;
    _selectedWeekendFive = false;
    _selectedWeekendSix = false;
    notifyListeners();
  }

  void setSelectedWeekend5() {
    _weekEndTiming = timingsFive;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = false;
    _selectedWeekendFour = false;
    _selectedWeekendFive = !_selectedWeekendFive;
    _selectedWeekendSix = false;
    notifyListeners();
  }

  void setSelectedWeekend6() {
    _weekEndTiming = timingsSix;
    _selectedWeekendOne = false;
    _selectedWeekendTwo = false;
    _selectedWeekendThree = false;
    _selectedWeekendFour = false;
    _selectedWeekendFive = false;
    _selectedWeekendSix = !_selectedWeekendSix;
    notifyListeners();
  }

  bool _previousRunnersAvailable = false;

  bool get previousRunnersAvailable => _previousRunnersAvailable;

  List<PreviousRunnersClass> _previousRunners = [
    PreviousRunnersClass(
      name: "Joeylene Rivera",
      imageUrl:
          "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
      selected: false,
    ),
    PreviousRunnersClass(
      name: "Joeylene Rivera",
      imageUrl:
          "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
      selected: false,
    ),
    PreviousRunnersClass(
      name: "Joeylene Rivera",
      imageUrl:
          "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
      selected: false,
    ),
  ];

  List<PreviousRunnersClass> get previousRunners => _previousRunners;

  selectPreviousWalker(int index) {
    for (var each in _previousRunners) {
      each.selected = false;
    }
    _previousRunners[index].selected = !_previousRunners[index].selected!;
    notifyListeners();
  }

  void getPets() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        BaseResponse<GetPetDetailsResponse> result = await runBusyFuture(
            _tamelyApi.getPetDetails(),
            throwException: true);
        List<PetDetailsResponse> petsList = result.data!.pets!;
        if (petsList.length != 0) {
          _hasPets = true;
          for (var each in petsList) {
            PetInfoResponse petsData = each.pet!;
            _dogsOwned.add(petsData.petName!);
            _dogsId.add(petsData.petId!);
          }
        } else if (petsList.length == 0) {
          _hasPets = false;
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

  void bookARun() async {
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
    List<PetDetailsBody> petDetailsBody = [];
    PetDetailsBody one = PetDetailsBody(selectedDogOneId, selectedSizeOne);
    petDetailsBody.add(one);
    if (noOfDogs == 2) {
      PetDetailsBody two = PetDetailsBody(selectedDogTwoId, selectedDogTwo);
      petDetailsBody.add(two);
    }

    //
    PetBehaviourBody petBehaviourBody = PetBehaviourBody(
      selectedDetailOne,
      selectedDetailTwo,
      selectedDetailThree,
      selectedDetailFour,
      selectedDetailFive,
    );

    // empty
    PetRunningLocationBody petRunningLocationBody = PetRunningLocationBody(
      addressLineOneController.text,
      addressLineOneController.text,
      addressLineOneController.text,
      addressLineOneController.text,
      addressLineOneController.text,
    );

    //
    PackageBody packageBody = PackageBody(
        _description, _amount.toString(), _frequency, _dayFrequency);

    // empty
    List<RunDetailsBody> runDetailsBody = [];
    RunDetailsBody three = RunDetailsBody(_weekDayTiming);
    runDetailsBody.add(three);
    print(runDetailsBody[0].runTime);
    if (dayFrequency == 2) {
      RunDetailsBody four = RunDetailsBody(_weekEndTiming);
      runDetailsBody.add(four);
    }
    //
    try {
      if (await Util.checkInternetConnectivity()) {
        BookARunBody bookARunBody = BookARunBody(
          noOfDogs,
          petDetailsBody,
          specialInstructionsController.text,
          petBehaviourBody,
          petRunningLocationBody,
          phoneController.text,
          alternatePhoneController.text,
          alternateNameController.text,
          packageBody,
          startDateTimeStamp,
          offDateTimeStamp,
          runDetailsBody,
        );
        BaseResponse<SendDataResponse> result = await runBusyFuture(
            _tamelyApi.bookARun(bookARunBody),
            throwException: true);
        if (result.data != null) {
          // send here
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

  @override
  void setFormStatus() {}
}

class PreviousRunnersClass {
  String? name;
  String? imageUrl;
  bool? selected;
  PreviousRunnersClass({this.name, this.imageUrl, this.selected});
}
