import 'package:tamely/models/services_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class ServicesViewModel extends BaseModel {
  String _location = "T-129 Emerald Hills Gurugram...";
  int _noOfAppointments = 3;
  String _appointmentDate = "14 Oct 2021";
  String _appointmentType = "Pet boarding";

  List<ServicesModel> _listOfServices = [
    ServicesModel(),
    ServicesModel(),
    ServicesModel(),
    ServicesModel(),
  ];

  String get location => this._location;

  int get noOfAppointments => this._noOfAppointments;

  List<ServicesModel> get listOfServices => _listOfServices;

  get appointmentDate => this._appointmentDate;

  get appointmentType => this._appointmentType;
}
