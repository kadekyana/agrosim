import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:agrosim/app/modules/Knowledge/views/knowledge_view.dart';
import 'package:agrosim/app/modules/Simulation/views/simulation_view.dart';
import 'package:agrosim/app/modules/Video/views/video_view.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isTapped = false;
  bool isTapped1 = false;
  bool isTapped2 = false;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      isTapped = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      isTapped = false;
                    });
                    Future.delayed(Duration(seconds: 1), () {
                      Get.to(KnowledgeView());
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: isTapped ? w * 0.1 : w * 0.25,
                    height: isTapped ? h * 0.05 : h * 0.2,
                    child: Card(
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('images/BOOK LOGO 1.png'),
                          Container(
                            width: w * 0.15,
                            child: FittedBox(
                              child: Text(
                                'KNOWLEDGE',
                                style: GoogleFonts.alfaSlabOne(
                                    color: Color(0xffC6C6C6)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      isTapped1 = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      isTapped1 = false;
                    });
                    Future.delayed(Duration(seconds: 1), () {
                      Get.to(VideoView());
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: isTapped ? w * 0.1 : w * 0.25,
                    height: isTapped ? h * 0.05 : h * 0.2,
                    child: Card(
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('images/Animation Logo 1.png'),
                          Container(
                            width: w * 0.15,
                            child: FittedBox(
                              child: Text(
                                'VIDEO',
                                style: GoogleFonts.alfaSlabOne(
                                    color: Color(0xffC6C6C6)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      isTapped2 = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      isTapped2 = false;
                    });
                    Future.delayed(Duration(seconds: 1), () {
                      Get.to(SimulationView());
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: isTapped ? w * 0.1 : w * 0.25,
                    height: isTapped ? h * 0.05 : h * 0.2,
                    child: Card(
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('images/Animation Logo 1 (1).png'),
                          Container(
                            width: w * 0.15,
                            child: FittedBox(
                              child: Text(
                                'SIMULATION',
                                style: GoogleFonts.alfaSlabOne(
                                    color: Color(0xffC6C6C6)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
