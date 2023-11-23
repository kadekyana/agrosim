import 'package:agrosim/app/modules/Kuis/views/question.dart';
import 'package:agrosim/app/modules/Score/views/score_view.dart';
import 'package:agrosim/app/widget/audioManager.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';

class KuisController extends GetxController {
  final AssetsAudioPlayer asset = AssetsAudioPlayer();
  final AudioManager audioManager = AudioManager();
  @override
  void onInit() {
    super.onInit();
    audioManager.pauseMusic();
    asset.play();
    asset.open(Audio('images/bgm.mp3'),
        loopMode: LoopMode.single, autoStart: true);
  }

  @override
  void onReady() {
    super.onReady();
    asset.play();
  }

  @override
  void onClose() {
    super.onClose();
    asset.pause();
    Get.delete<KuisController>();
  }

  var currentIndex = 0.obs;

  var score = 0.obs;
  bool cekJawaban(int index) {
    return index == question[currentIndex.value].correctIndex;
  }

  var question = <Question>[
    Question(
        text: 'Apa komponen yang diperlukan dalam penanaman jeruk, kecuali ?',
        options: ['Sabit', 'Cangkul', 'Bibit Jeruk', 'Obat Jeruk'],
        correctIndex: 0,
        explanation:
            '1. Jawaban Benar : Sabit - Karena sabit tidak digunakan dalam proses penanaman tanaman jeruk'),
    Question(
        text:
            'Setelah mencangkul apa komponen yang diperlukan dalam penanaman jeruk ?',
        options: ['Sabit', 'Cangkul', 'Bibit Jeruk', 'Obat Jeruk'],
        correctIndex: 2,
        explanation:
            '1. Jawaban Benar : Sabit - Karena sabit tidak digunakan dalam proses penanaman tanaman jeruk'),
    Question(
        text: 'Apa komponen yang diperlukan dalam pembuahan jeruk ?',
        options: ['Sabit', 'Cangkul', 'Bibit Jeruk', 'Obat Jeruk'],
        correctIndex: 3,
        explanation:
            '1. Jawaban Benar : Sabit - Karena sabit tidak digunakan dalam proses penanaman tanaman jeruk'),
    Question(
        text: 'Apa komponen yang diperlukan dalam penanaman jeruk ?',
        options: ['Sabit', 'Cangkul', 'Bibit Jeruk', 'Obat Jeruk'],
        correctIndex: 1,
        explanation:
            '1. Jawaban Benar : Sabit - Karena sabit tidak digunakan dalam proses penanaman tanaman jeruk'),
    Question(
        text: 'Apa saja kandungan yang terdapat dalam jeruk ?',
        options: ['Semua Salah', 'Vitamin C', 'Semua Benar', 'Pestisida'],
        correctIndex: 1,
        explanation:
            '1. Jawaban Benar : Sabit - Karena sabit tidak digunakan dalam proses penanaman tanaman jeruk'),
  ].obs;

  void answerQuestion(int selectedIndex) {
    if (selectedIndex == question[currentIndex.value].correctIndex) {
      score.value += 20;
    }

    moveToNextQuestion();
  }

  void moveToNextQuestion() {
    if (currentIndex.value < question.length - 1) {
      currentIndex.value += 1;
    } else {
      Get.to(ScoreView());
    }

    // final count = 0.obs;

    // void increment() => count.value++;
  }
}
