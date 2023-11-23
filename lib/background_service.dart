// import 'dart:async';
// import 'dart:ui';
// import 'package:flutter_background_service/flutter_background_service.dart';

// @pragma('vm:entry-point')
// void onStart(ServiceInstance service) async {
//   DartPluginRegistrant.ensureInitialized();
//   service.on('stopService').listen((event) {});

//   //taruh fungsi di sini
// }

// @pragma('vm:entry-point')
// Future<bool> onIosBackground(ServiceInstance service) async {
//   DartPluginRegistrant.ensureInitialized();
//   return false;
// }

// class TTEServiceBackground {
//   static final TTEServiceBackground instance = TTEServiceBackground._internal();
//   factory TTEServiceBackground() {
//     return instance;
//   }
//   TTEServiceBackground._internal();

//   Future init(String idTTE) async {
//     final service = FlutterBackgroundService();
//     await service.configure(
//       androidConfiguration: AndroidConfiguration(
//         onStart: onStart,
//         autoStart: true,
//         isForegroundMode: true,
//         initialNotificationContent: 'Proses TTE sedang berjalan',
//         initialNotificationTitle: 'E-Ganesha',
//       ),
//       iosConfiguration: IosConfiguration(
//         onBackground: onIosBackground,
//         autoStart: true,
//         onForeground: onStart,
//       ),
//     );
//     await service.startService();
//   }
// }
