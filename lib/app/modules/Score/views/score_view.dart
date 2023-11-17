import 'package:agrosim/app/modules/BottomBar/views/bottom_bar_view.dart';
import 'package:agrosim/app/modules/Game/views/game_view.dart';
import 'package:agrosim/app/modules/Kuis/controllers/kuis_controller.dart';
import 'package:agrosim/app/modules/PembahasanKuis/views/pembahasan_kuis_view.dart';
import 'package:agrosim/app/modules/Statistic/views/statistic_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/score_controller.dart';

class ScoreView extends GetView<ScoreController> {
  ScoreView({Key? key}) : super(key: key);
  final KuisController kuisController = Get.find();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Get.to(PembahasanKuisView(questions: kuisController.question));
        },
        child: Container(
          child: Stack(
            children: [
              Container(
                width: w,
                height: h,
                child: Image.asset(
                  'images/ltkuis.png',
                  fit: BoxFit.fill,
                ),
              ),
              // Menampilkan gambar bintang sesuai dengan level bintang
              Positioned(
                bottom: 90,
                left: 50,
                child: Image.asset(
                  'images/${calculateStarImage(kuisController.score.value)}',
                  width: 250,
                ),
              ),
              // Positioned(
              //   top: 80,
              //   left: 20,
              //   child: ElevatedButton(
              //     style: ButtonStyle(
              //         backgroundColor:
              //             MaterialStatePropertyAll(Color(0xffFF6000))),
              //     onPressed: () {
              //       // Reset kuis dan kembali ke halaman awal
              //       kuisController.currentIndex.value = 0;
              //       kuisController.score.value = 0;
              //       Get.back();
              //     },
              //     child: Text(
              //       'Ulangi Kuis ?',
              //       style: GoogleFonts.breeSerif(
              //           fontSize: 20, color: Colors.white),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 80,
              //   right: 20,
              //   child: ElevatedButton(
              //     style: ButtonStyle(
              //         backgroundColor:
              //             MaterialStatePropertyAll(Color(0xffFF6000))),
              //     onPressed: () {
              //       kuisController.currentIndex.value = 0;
              //       kuisController.score.value = 0;
              //       Get.to(BottomBarView());
              //     },
              //     child: Text(
              //       'Keluar',
              //       style: GoogleFonts.breeSerif(
              //           fontSize: 20, color: Colors.white),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   bottom: 350,
              //   left: 100,
              //   child: ElevatedButton(
              //     style: ButtonStyle(
              //         backgroundColor:
              //             MaterialStatePropertyAll(Color(0xffFF6000))),
              //     onPressed: () {
              //       Get.to(PembahasanKuisView(
              //         questions: kuisController.question,
              //       ));
              //     },
              //     child: Text(
              //       'Pembahasan',
              //       style: GoogleFonts.breeSerif(
              //           fontSize: 30, color: Colors.white),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk menghitung nama gambar bintang berdasarkan skor
  String calculateStarImage(int score) {
    if (score == 100) {
      return 'benarsemua.png';
    } else if (score >= 60) {
      return 'salah2.png';
    } else if (score >= 20) {
      return 'salah 4.png';
    } else {
      return 'salahsemua.png';
    }
  }
}
