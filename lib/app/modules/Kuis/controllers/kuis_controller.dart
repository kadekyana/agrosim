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
    asset.open(Audio('images/kuis.mp3'),
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
        text: 'Dibawah ini, yang merupakan nama latin dari jeruk siam adalah ?',
        options: [
          'Citrus sinensis L',
          'Citrus reticulata',
          'Citrus nobilis',
          'Citrus limon Linn'
        ],
        correctIndex: 2,
        explanation:
            '1. Nama latin dari jeruk siam adalah Citrus nobilis. Citrus sinensis (a) lebih dikenal sebagai jeruk manis, Citrus reticulata (b) umumnya merujuk pada jeruk mandarin, dan Citrus limon (d) adalah jeruk lemon.'),
    Question(
        text: 'Syarat budidaya tanaman jeruk adalah ?',
        options: ['Iklim', 'Bibit', 'Hujan', 'Petani'],
        correctIndex: 0,
        explanation:
            '2. Iklim: Tanaman jeruk biasanya tumbuh baik di iklim subtropis hingga tropis. Iklim yang hangat dan sedikit sejuk dengan musim hujan yang teratur cenderung mendukung pertumbuhan yang baik.'),
    Question(
        text: 'Alat untuk menanam jeruk adalah ?',
        options: ['Sabit', 'Tanah', 'Bibit Jeruk', 'Cangkul'],
        correctIndex: 3,
        explanation:
            '3. Cangkul: Alat ini digunakan untuk menggali tanah, persiapan tempat tanam, dan pemeliharaan tanah di sekitar tanaman.'),
    Question(
        text: 'Apa yang dilakukan jika tanaman terkena hama ?',
        options: [
          'Siram Dengan Air',
          'Memberi Pestisida',
          'Memberi Pupuk',
          'Mematikan Pohon'
        ],
        correctIndex: 1,
        explanation:
            '4. Memberikan Pestisida: Pestisida digunakan untuk mengendalikan atau menghilangkan hama yang dapat merusak tanaman.'),
    Question(
        text: 'Jeruk kaya akan vitamin ?',
        options: ['Zat Besi', 'Vitamin C', 'Vitamin D', 'Kalsium'],
        correctIndex: 1,
        explanation:
            'Vitamin C: Jeruk dikenal kaya akan vitamin C, yang merupakan nutrisi penting untuk kesehatan tubuh manusia.'),
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
