import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:tamely/enum/connectivity_status.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:tamely/services/connectivity_service.dart';
import 'package:tamely/services/local_notification_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/theme_setup.dart';
import 'package:tamely/ui/DogGroomingService/DgAppointment/DgAppointmentdetails/dg_appointmentdetails_view.dart';
import 'package:tamely/ui/DogRunningService/DrAppointment/DrAppointmentdetails/dr_appointmentdetails_view.dart';
import 'package:tamely/ui/DogRunningService/DrAppointment/DrLivemap/dr_livemap_view.dart';
import 'package:tamely/ui/DogRunningService/DrAppointment/DrReportcard/dr_reportcard_view.dart';
import 'package:tamely/ui/DogRunningService/DrBookingService/DrBooking/dr_dogrunningbooking_view.dart';
import 'package:tamely/ui/DogTrainingService/DtAppointment/DtAppointmentdetails/dt_appointmentdetails_view.dart';
import 'package:tamely/ui/DogTrainingService/DtAppointment/DtReportcard/dt_reportcard_view.dart';
import 'package:tamely/ui/DogTrainingService/DtAppointment/DtReportcard/dt_reportcard_viewmodel.dart';
import 'package:tamely/ui/myActiveAppointments/appointments_view.dart';
import 'package:tamely/ui/dashboard/dashboard.dart';
import 'package:tamely/ui/startup/startup_view.dart';
import 'package:tamely/util/Color.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

class TamelyApp extends StatefulWidget {
  @override
  _TamelyAppState createState() => _TamelyAppState();
}

class _TamelyAppState extends State<TamelyApp> {
  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();

  final service = locator<SnackbarService>();

  @override
  void initState() {
    super.initState();
    setupSnackBarUi();

    LocalNotificationService.initialize();

    FirebaseMessaging.instance.getInitialMessage();

    //foreground work
    FirebaseMessaging.onMessage.listen((message) {
      final FlutterLocalNotificationsPlugin _notificationsPlugin =
          FlutterLocalNotificationsPlugin();
      if (message.data != null) {
        final InitializationSettings initializationSettings =
            InitializationSettings(
                android: AndroidInitializationSettings("@mipmap/ic_launcher"));

        _notificationsPlugin.initialize(initializationSettings,
            onSelectNotification: (screenName) async {
          //Based on screenName redirect to a particular screen
          switch (screenName) {
            case "checkLive":
              {
                //Parameters required for the screen
                var appointmentId = message.data['appointmentId'];
                var userId = message.data['userId'];
                var serviceProviderId = message.data['serviceProviderId'];
                var walkNumber;
                if (message.data['walkNumber'] == "one") {
                  walkNumber = WalkNumber.One;
                } else if (message.data['walkNumber'] == "two") {
                  walkNumber = WalkNumber.Two;
                }

                //Navigate to DRLiveMapView()
                Navigator.push(
                    StackedService.navigatorKey!.currentContext!,
                    MaterialPageRoute(
                        builder: (context) => DRLiveMapView(
                              appointmentId: appointmentId,
                              walkNumber: walkNumber,
                              serviceProviderId: serviceProviderId,
                              userId: userId,
                              selectedData: DateTime.now(),
                              timeElasped: 0,
                            )));
              }

              break;

            case "seeReport":
              {
                //For Dog Running
                if (message.data['date'] != "") {
                  var appointmentId = message.data['bookingDetailsId'];
                  var noOfDogs = message.data['noOfDogs'];

                  List<String> dogs = [];
                  String dogName = message.data['dogs'];
                  dogs.add(dogName);

                  var date = message.data['date'];
                  int newDate = int.parse(date);
                  final DateTime timeStamp =
                      DateTime.fromMillisecondsSinceEpoch(newDate);

                  var walkNumber;
                  if (message.data['walkNumber'] == "one") {
                    walkNumber = WalkNumber.One;
                  } else if (message.data['walkNumber'] == "two") {
                    walkNumber = WalkNumber.Two;
                  }

                  //Navigate to DRReportCardView
                  Navigator.push(
                      StackedService.navigatorKey!.currentContext!,
                      MaterialPageRoute(
                          builder: (context) => DRReportCardView(
                                appointmentId: appointmentId,
                                dogs: dogs,
                                walkNumber: walkNumber,
                                date: timeStamp,
                                noOfDogs: int.parse(noOfDogs),
                              )));
                }
                //For Dog Training
                else {
                  var appointmentId =
                      message.data['DogTrainingbookingDetailsId'];

                  var sessionNo = int.parse(message.data['sessionNo']);

                  //Navigate to DTReportCardView
                  Navigator.push(
                      StackedService.navigatorKey!.currentContext!,
                      MaterialPageRoute(
                          builder: (context) => DTReportCardView(
                                appointmentId: appointmentId,
                                sessionNo: sessionNo,
                              )));
                }
              }

              break;

            case "myBookings":
              {
                //Navigate to AppointmentsView
                Navigator.push(
                    StackedService.navigatorKey!.currentContext!,
                    MaterialPageRoute(
                        builder: (context) => AppointmentsView()));
              }

              break;

            case "appointmentDetails":
              {
                //common Parameter
                var appointmentId = message.data['bookingDetailsId'];

                //For Dog Running
                if (message.data['DogTrainingbookingDetailsId'] == "") {
                  //Navigate to DRAppointmentDetailsView
                  Navigator.push(
                      StackedService.navigatorKey!.currentContext!,
                      MaterialPageRoute(
                          builder: (context) => DRAppointmentDetailsView(
                              appointmentId: appointmentId)));
                }
                //For Dog Training
                else {
                  var dogTrainingBookingDetailsId =
                      message.data["DogTrainingbookingDetailsId"];
                  Navigator.push(
                      StackedService.navigatorKey!.currentContext!,
                      MaterialPageRoute(
                          builder: (context) => DTAppointmentDetailsView(
                              appointmentId: dogTrainingBookingDetailsId)));
                }
              }

              break;

            //Default Case
            default:
              {
                //Default Navigate to HomePage
                Navigator.push(StackedService.navigatorKey!.currentContext!,
                    MaterialPageRoute(builder: (context) => TamelyApp()));
              }
          }
        });

        LocalNotificationService.display(message);
      }
    });

    //background work not terminated
    //To open specific page use clicks on notification
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final routeFromMessage = message.data["screenName"];

      print(routeFromMessage);
    });
  }

  void setupSnackBarUi() {
    // Registers a config to be used when calling showSnackBar
    service.registerSnackbarConfig(SnackbarConfig(
      backgroundColor: colors.primary,
      textColor: Colors.white,
      messageColor: Colors.white,
      mainButtonTextColor: Colors.black,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      initialData: ConnectivityStatus.Offline,
      create: (context) =>
          ConnectivityService().connectionStatusController.stream,
      child: ThemeBuilder(
          themes: getThemes(),
          builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
                theme: regularTheme,
                debugShowCheckedModeBanner: false,
                darkTheme: darkTheme,
                themeMode: themeMode,
                // Add the `localizationsDelegate` and `supportedLocales` lines.
                title: "Tamely App",
                home: _getStartupScreen(),
                onGenerateRoute: StackedRouter().onGenerateRoute,
                navigatorKey: StackedService.navigatorKey,
              )),
    );
  }

  Widget _getStartupScreen() {
    if (!_sharedPreferencesService.homeVisible) {
      // return DRDogRunningBookingView();
      return StartupView();
      // } else if (_sharedPreferencesService.authToken.isEmpty) {
      //   return LoginView();
    } else {
      return Dashboard(
        initialPageState: 0,
        isNeedToUpdateProfile: true,
        isHuman: true,
        petToken: "",
        petID: "",
        initialState: 0,
      );
    }
  }
}
