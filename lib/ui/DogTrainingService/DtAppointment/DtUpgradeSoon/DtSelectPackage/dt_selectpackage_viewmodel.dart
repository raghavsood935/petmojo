import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import '../../../../../app/app.router.dart';
import '../../../../../enum/dog_training_package.dart';

class DTSelectPackageViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('DTSelectPackageViewModel');
  final _navigationService = locator<NavigationService>();

  void navigateBack() {
    _navigationService.back();
  }

  DTSelectPackageViewModel(
    this.appointmentId,
    this.currentPackage,
    this.address1,
    this.address2,
    this.dogs,
    this.partnerName,
    this.previousAmount,
  );

  // 1 - Free
  // 2 - Puppy
  // 3 - Basic
  // 4 - inter
  // 5 - Advt
  // 6 - Pre

  // Get variables

  // -- Pass to next page

  final String appointmentId;
  final DogTrainingPackage currentPackage;

  final String address1;
  final String address2;

  final List<String> dogs;

  final String partnerName;

  final double previousAmount;

  // -- Select Package

  String _description = "Basic Training";
  String get description => _description;

  double _subTotal = 22360;
  double get subTotal => _subTotal;

  double _amount = 17200;
  double get amount => _amount;

  double _discount = 5160;
  double get discount => _discount;

  int _frequency = 24;
  int get frequency => _frequency;

  int _noOfMonths = 2;
  int get noOfMonths => _noOfMonths;

  double _newTotalAmount = 2;
  double get newTotalAmount => _newTotalAmount;

  DogTrainingPackage? selectedPackage = DogTrainingPackage.Three;
  DogTrainingPackage? seeMoreSelectedPackage = DogTrainingPackage.One;

  void init() {
    if (currentPackage == DogTrainingPackage.Two) {
      selectedPackage = DogTrainingPackage.Three;
    } else if (currentPackage == DogTrainingPackage.Three) {
      selectedPackage = DogTrainingPackage.Four;
    } else if (currentPackage == DogTrainingPackage.Four) {
      selectedPackage = DogTrainingPackage.Five;
    } else if (currentPackage == DogTrainingPackage.Five) {
      selectedPackage = DogTrainingPackage.Six;
    }
    selectPlan(selectedPackage);

    notifyListeners();
  }

  void selectSeeMore(DogTrainingPackage? value) {
    if (seeMoreSelectedPackage == value) {
      seeMoreSelectedPackage = DogTrainingPackage.Three;
    } else if (seeMoreSelectedPackage != value) {
      seeMoreSelectedPackage = value;
    }
    notifyListeners();
  }

  void selectPlan(DogTrainingPackage? value) {
    selectedPackage = value;
    if (selectedPackage == DogTrainingPackage.Three) {
      _description = "Basic Training";
      _subTotal = 22360;
      _amount = 17200;
      _discount = 5160;
      _frequency = 24;
      _noOfMonths = 2;
    } else if (selectedPackage == DogTrainingPackage.Four) {
      _description = "Intermediate Training";
      _subTotal = 33228;
      _amount = 25560;
      _discount = 7668;
      _frequency = 36;
      _noOfMonths = 3;
    } else if (selectedPackage == DogTrainingPackage.Five) {
      _description = "Advance Training";
      _subTotal = 42432;
      _amount = 32640;
      _discount = 9792;
      _frequency = 48;
      _noOfMonths = 4;
    } else if (selectedPackage == DogTrainingPackage.Six) {
      _description = "Premium Training";
      _subTotal = 70772;
      _amount = 54440;
      _discount = 16332;
      _frequency = 72;
      _noOfMonths = 6;
    }
    setNewTotalAmount();
    notifyListeners();
  }

  void setNewTotalAmount() {
    _newTotalAmount = amount - previousAmount;
    notifyListeners();
  }

  void onContinuePressed() {
    _navigationService.navigateTo(
      Routes.dTUpgradePlanView,
      arguments: DTUpgradePlanViewArguments(
        appointmentId: appointmentId,
        selectedPackage: selectedPackage!,
        frequency: frequency,
        description: description,
        address1: address1,
        address2: address2,
        dogs: dogs,
        partnerName: partnerName,
        amount: amount,
        discount: discount,
        previousAmount: previousAmount,
        newTotalAmount: newTotalAmount,
      ),
    );
  }

  @override
  Future<void> futureToRun() async {
    init();
    log.d("futureToRun");
  }
}
