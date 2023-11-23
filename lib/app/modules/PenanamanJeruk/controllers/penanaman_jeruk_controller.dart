import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';

class PenanamanJerukController extends GetxController {
  //TODO: Implement PenanamanJerukController
  final AssetsAudioPlayer asset = AssetsAudioPlayer();

  List<String> tools = [
    'Bibit.png',
    'Sekop.png',
    'Pestisida.png',
    'Pupuk1.png',
    'Pupuk2.png',
    'Pupuk3.png',
  ];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    asset.play();
    asset.open(Audio('images/bgm.mp3'),
        loopMode: LoopMode.single, autoStart: true);
  }

  @override
  void onReady() {
    asset.play();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    asset.pause();
  }

  void increment() => count.value++;
}
