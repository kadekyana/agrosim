import 'package:agrosim/app/modules/BottomBar/views/bottom_bar_view.dart';
import 'package:agrosim/app/modules/Kuis/controllers/kuis_controller.dart';
import 'package:agrosim/app/modules/Kuis/views/question.dart';
import 'package:agrosim/sql_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../controllers/pembahasan_kuis_controller.dart';

class PembahasanKuisView extends GetView<PembahasanKuisController> {
  PembahasanKuisView({Key? key, required this.questions}) : super(key: key);
  final List<Question> questions;
  final KuisController kuisController = Get.find();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Stack(
          children: [
            Container(
              width: w,
              height: h,
              child: Image.asset(
                'images/latar.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              right: 20,
              top: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xffFF6000),
                  ),
                ),
                onPressed: () async {
                  //Simpan score
                  DateTime tanggal = DateTime.now();
                  String timestamp = DateFormat('yyyy-MM-dd').format(tanggal);
                  int score = kuisController.score.value;
                  await SQLHelper.resultScore(score, timestamp);
                  Future.delayed(Duration(seconds: 3), () {
                    kuisController.currentIndex.value = 0;
                    kuisController.score.value = 0;
                    kuisController.onClose();
                    Get.snackbar('Success', 'Berhasil Simpan Score');
                    Get.to(BottomBarView());
                  });
                },
                child: Text(
                  'END',
                  style: GoogleFonts.alfaSlabOne(fontSize: 20),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 20,
              child: Container(
                width: w * 0.9,
                height: h * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFF6000),
                ),
                child: ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    Question question = questions[index];
                    return Card(
                      margin: EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          'Pertanyaan: ${question.text}',
                          style: GoogleFonts.alfaSlabOne(),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jawaban Benar: ${question.options[question.correctIndex]}',
                              style: GoogleFonts.breeSerif(),
                            ),
                            Text(
                              'Penjelasan: ${question.explanation}',
                              style: GoogleFonts.breeSerif(),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
