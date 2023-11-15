import 'package:agrosim/app/widget/mediaVid.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  //TODO: Implement VideoController
  List<MediaVid> mediaList = [
    MediaVid(
        title: 'Penanaman Jeruk',
        imageUrl: 'images/JERUK 1.png',
        videoUrl: 'images/video/tesvid.mp4'),
    MediaVid(
        title: 'Penanaman Jeruk Mandarin',
        imageUrl: 'images/KONTEN KNOWLEDGE (1).png',
        videoUrl: 'images/video/tesvid.mp4'),
    MediaVid(
        title: 'Penanaman Jeruk Pak Wawan',
        imageUrl: 'images/KONTEN KNOWLEDGE.png',
        videoUrl: 'images/video/tesvid.mp4'),
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
