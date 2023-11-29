// import "package:flutter_local_notifications/flutter_local_notifications.dart";

// class NotificationService {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> initializeNotification() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     const DarwinInitializationSettings darwinInitializationSettings =
//         DarwinInitializationSettings(
//       requestAlertPermission: false,
//       requestBadgePermission: false,
//       requestSoundPermission: false,
//     );

//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: darwinInitializationSettings,
//     );
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   Future<void> showNotification(
//     int id,
//     String title,
//     String body,
//   ) async {
//     const AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails('1', 'TTE',
//             channelDescription: 'Khusus notif TTE',
//             importance: Importance.max,
//             priority: Priority.high,
//             ticker: 'ticker');
//     const NotificationDetails notificationDetails =
//         NotificationDetails(android: androidNotificationDetails);
//     await flutterLocalNotificationsPlugin.show(
//       1,
//       title,
//       body,
//       notificationDetails,
//       payload: 'item x',
//     );
//   }
// }
