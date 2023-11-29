import 'package:agrosim/app/widget/mediaVid.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  //TODO: Implement VideoController
  List<MediaVid> mediaList = [
    MediaVid(
        title: 'Cara Menanaman Pohon Jeruk',
        imageUrl: 'images/KONTEN KNOWLEDGE (1).png',
        videoUrl: 'images/video/cara1.mp4'),
    MediaVid(
        title: 'Cara Membuat Jeruk Berbuah Lebat',
        imageUrl: 'images/KONTEN KNOWLEDGE (1).png',
        videoUrl: 'images/video/cara2.mp4'),
    MediaVid(
        title: 'Cara Mudah Menanam Pohon Jeruk Siem',
        imageUrl: 'images/KONTEN KNOWLEDGE (1).png',
        videoUrl: 'images/video/cara3.mp4'),
    MediaVid(
        title: 'Petani Muda Sukses - Rahasia Penanaman Jeruk',
        imageUrl: 'images/KONTEN KNOWLEDGE (1).png',
        videoUrl: 'images/video/cara4.mp4'),
  ];
  List<MediaVid> mediaListOlahan = [
    MediaVid(
        title: 'Membuat Selai Jeruk',
        imageUrl: 'images/JERUK 1.png',
        videoUrl: 'images/video/olahan1.mp4'),
    MediaVid(
        title: 'Manisan Kulit Jeruk',
        imageUrl: 'images/JERUK 1.png',
        videoUrl: 'images/video/olahan2.mp4'),
    MediaVid(
        title: 'Membuat Sabun Dari Kulit Jeruk',
        imageUrl: 'images/JERUK 1.png',
        videoUrl: 'images/video/olahan3.mp4'),
    MediaVid(
        title: 'Membuat Chocolate-Dipped Oranges',
        imageUrl: 'images/JERUK 1.png',
        videoUrl: 'images/video/olahan4.mp4'),
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
