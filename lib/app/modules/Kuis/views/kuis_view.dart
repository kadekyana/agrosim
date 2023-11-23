import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/kuis_controller.dart';

class KuisView extends GetView<KuisController> {
  KuisView({Key? key}) : super(key: key);
  final KuisController controller = Get.put(KuisController());

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Container(
      width: w,
      height: h,
      child: Stack(
        children: [
          Container(
            width: w,
            height: h,
            child: Image.asset(
              'images/latar.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 120,
            left: 250,
            child: FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xffFF6000),
                ),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 30),
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Konfirmasi'),
                      content: Text('Apakah Anda yakin ingin mengakhiri kuis?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            controller.currentIndex.value = 0;
                            controller.score.value = 0;
                            controller.onClose();
                            Get.back(); // Keluar dari modal
                            Get.back(); // Kembali ke halaman sebelumnya atau akhiri aplikasi
                          },
                          child: Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.back(); // Keluar dari modal
                          },
                          child: Text('No'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'END',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 170,
            child: Container(
              width: w,
              height: h * 0.75,
              child: Obx(() {
                var currentQuestion =
                    controller.question[controller.currentIndex.value];
                return Column(
                  children: [
                    Container(
                      width: w * 0.8,
                      height: h * 0.2,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFF6000),
                      ),
                      child: Center(
                        child: Text(
                          currentQuestion.text,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.breeSerif(
                              color: Colors.white,
                              fontSize: 18,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children:
                          currentQuestion.options.asMap().entries.map((entry) {
                        int index = entry.key;
                        String option = entry.value;
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 60, horizontal: 10),
                          child: FilledButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  // Warna saat tombol ditekan (bisa disesuaikan)
                                  return Color(0xffFF6000);
                                }
                                return Color(0xff898989);
                              }),
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                              ),
                            ),
                            onPressed: () {
                              controller.answerQuestion(index);
                              FilledButton.styleFrom(
                                  backgroundColor: controller.cekJawaban(index)
                                      ? Colors.green
                                      : Colors.blue);
                            },
                            child: Text(
                              option,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
