import 'package:agrosim/app/modules/OnBoarding/views/on_boarding_view.dart';
import 'package:agrosim/sql_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inisialisasiDatabase();
  runApp(const MyApp());
}

Future<void> inisialisasiDatabase() async {
  final db = await SQLHelper.db();
  print('Database berhasil diinisialisasi');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
    );
  }
}
