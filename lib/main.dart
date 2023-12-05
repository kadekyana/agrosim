import 'package:agrosim/app/modules/OnBoarding/views/on_boarding_view.dart';
import 'package:agrosim/app/widget/audioManager.dart';
import 'package:agrosim/notif.dart';
import 'package:agrosim/sql_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService notificationService = NotificationService();
  await _requestNotificationPermission();
  await inisialisasiDatabase();
  await notificationService.initializeNotification();
  runApp(const MyApp());
}

Future<void> _requestNotificationPermission() async {
  var notif = await Permission.notification.status;
  var download = await Permission.storage.status;

  if (!notif.isGranted && !download.isGranted) {
    await Permission.notification.request();
    await Permission.storage.request();
  }
}

Future<void> inisialisasiDatabase() async {
  final db = await SQLHelper.db();
  print('Database berhasil diinisialisasi');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    AudioManager().init();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
    );
  }
}
