import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:agrosim/app/modules/Kuis/views/kuis_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/game_controller.dart';

class GameView extends GetView<GameController> {
  const GameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEBE4D1),
      appBar: AppbarView(
        back: false,
        data: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(KuisView());
                  },
                  child: Container(
                    width: w,
                    height: h * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            'images/game.png',
                            height: h * 0.5,
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 70,
                          child: FilledButton(
                            onPressed: () {
                              Get.to(KuisView());
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xffFF6000)),
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 50),
                              ),
                            ),
                            child: Text(
                              'PLAY NOW',
                              style:
                                  GoogleFonts.alfaSlabOne(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  width: w,
                  height: h * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFF6000),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: w,
                            height: 20,
                            child: Text(
                              'ABOUT',
                              style: GoogleFonts.alfaSlabOne(
                                  color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            width: w,
                            child: Center(
                              child: Text(
                                'Fitur game dalam aplikasi ini dirancang untuk memberikan pengalaman interaktif yang tidak hanya menghibur, tetapi juga mendidik. Dengan menghadirkan pertanyaan yang menantang, tujuan utamanya adalah mengukur dan meningkatkan pemahaman pemain tentang materi tertentu secara menyenangkan.Interaktif, mendidik, menghibur, dan memastikan pemahaman melalui tantangan intelektual.',
                                style: GoogleFonts.breeSerif(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
