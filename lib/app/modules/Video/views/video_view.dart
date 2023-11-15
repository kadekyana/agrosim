import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:agrosim/app/modules/Komponen/views/komponen_view.dart';
import 'package:agrosim/app/modules/Langkah/views/langkah_view.dart';
import 'package:agrosim/app/modules/Pengertian/views/pengertian_view.dart';
import 'package:agrosim/app/modules/VideoPlayer/views/video_player_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/video_controller.dart';

class VideoView extends GetView<VideoController> {
  VideoView({Key? key}) : super(key: key);
  final VideoController controller = Get.put(VideoController());
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEBE4D1),
      appBar: AppbarView(
        back: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: w * 0.2,
                  height: h * 0.15,
                  decoration: BoxDecoration(
                      color: Color(0xffEBC034),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/Animation Logo 1.png',
                        color: Colors.white,
                      ),
                      Container(
                        width: w * 0.15,
                        child: FittedBox(
                          child: Text(
                            'VIDEO',
                            style: GoogleFonts.alfaSlabOne(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: w,
                height: h * 0.6,
                child: ListView.builder(
                    itemCount: controller.mediaList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(VideoPlayerView(
                              videoUrl: controller.mediaList[index].videoUrl));
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: w,
                              height: h * 0.15,
                              child: Card(
                                  elevation: 10,
                                  color: Color(0xffFF6000),
                                  child: Image.asset(
                                    controller.mediaList[index].imageUrl,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Positioned(
                              top: 20,
                              left: 80,
                              child: Container(
                                width: 150,
                                height: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    FittedBox(
                                      child: Text(
                                        controller.mediaList[index].title,
                                        style: GoogleFonts.alfaSlabOne(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
