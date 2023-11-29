import 'package:agrosim/app/widget/audioManager.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  //TODO: Implement BottomBarController
  final AudioManager audioManager = AudioManager();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    audioManager.playMusic();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
