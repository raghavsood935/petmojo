import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tamely/util/global_methods.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void initialize() async {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
        "tamelyid", "tamely channel",
        importance: Importance.high);

    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: AndroidInitializationSettings("@mipmap/ic_launcher"));

    _notificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String? route) async {});
  }

  static Future _notificationDetails(RemoteMessage message) async {
    final bigPicturePath =
        await GlobalMethods.linkToFilePath(message.data["image"], "bigImage");
    final styleInformation = BigPictureStyleInformation(
      FilePathAndroidBitmap(bigPicturePath),
      largeIcon: FilePathAndroidBitmap(bigPicturePath),
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        "tamelyid",
        "tamely channel",
        playSound: true,
        // styleInformation: styleInformation,
        // sound: RawResourceAndroidNotificationSound("pop"),
        importance: Importance.max,
        priority: Priority.max,
        channelShowBadge: true,
      ),
    );

    return notificationDetails;
  }

  static void display(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      await _notificationsPlugin.show(
        id,
        message.data["title"],
        message.data["body"],
        await _notificationDetails(message),
        payload: message.data["route"],
      );
    } on Exception catch (e) {
      print(e);
    }
  }

  static void dummyDisplay() async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      NotificationDetails notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          "tamelyid",
          "tamely channel",
          playSound: true,
          // sound: RawResourceAndroidNotificationSound("pop"),
          importance: Importance.high,
          priority: Priority.max,
          channelShowBadge: false,
        ),
      );

      await _notificationsPlugin.show(
        id,
        "Testing",
        "message.notification!.body",
        notificationDetails,
        payload: "payload",
      );
    } on Exception catch (e) {
      print(e);
    }
  }
}
