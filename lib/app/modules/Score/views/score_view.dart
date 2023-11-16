import 'package:agrosim/app/modules/Kuis/controllers/kuis_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/score_controller.dart';

class ScoreView extends GetView<ScoreController> {
  ScoreView({Key? key}) : super(key: key);
  final KuisController quizController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Skor')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Skor: ${quizController.score}'),
            ElevatedButton(
              onPressed: () {
                // Reset kuis dan kembali ke halaman awal
                quizController.currentIndex.value = 0;
                quizController.score.value = 0;
                Get.back();
              },
              child: Text('Ulangi Kuis'),
            ),
          ],
        ),
      ),
    );
  }
}
