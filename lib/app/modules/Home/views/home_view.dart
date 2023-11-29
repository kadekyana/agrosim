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
  bool TapKnow = false;
  bool TapVid = false;
  bool TapSimu = false;
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
                      TapKnow = true;
                    });
                  },
                  onTapUp: (_) {
                    Future.delayed(Duration(milliseconds: 500), () {
                      setState(() {
                        TapKnow = false;
                      });
                    });
                    Future.delayed(Duration(seconds: 1), () {
                      Get.to(KnowledgeView());
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: TapKnow ? w * 0.5 : w * 0.25,
                    height: h * 0.2,
                    child: Card(
                      elevation: 10,
                      color: TapKnow ? Color(0xffEBC034) : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('images/BOOK LOGO 1.png',
                              color: TapKnow ? Colors.white : null),
                          Container(
                            width: w * 0.2,
                            child: FittedBox(
                              child: Text(
                                'KNOWLEDGE',
                                style: GoogleFonts.alfaSlabOne(
                                    color: TapKnow
                                        ? Colors.white
                                        : Color(0xffC6C6C6)),
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
                      TapVid = true;
                    });
                  },
                  onTapUp: (_) {
                    Future.delayed(Duration(milliseconds: 500), () {
                      setState(() {
                        TapVid = false;
                      });
                    });
                    Future.delayed(Duration(seconds: 1), () {
                      Get.to(VideoView());
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: TapVid ? w * 0.5 : w * 0.25,
                    height: h * 0.2,
                    child: Card(
                      elevation: 10,
                      color: TapVid ? Color(0xffEBC034) : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/Animation Logo 1.png',
                            color: TapVid ? Colors.white : null,
                          ),
                          Container(
                            width: w * 0.2,
                            child: FittedBox(
                              child: Text(
                                'VIDEO',
                                style: GoogleFonts.alfaSlabOne(
                                    color: TapVid
                                        ? Colors.white
                                        : Color(0xffC6C6C6)),
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
                      TapSimu = true;
                    });
                  },
                  onTapUp: (_) {
                    Future.delayed(Duration(milliseconds: 500), () {
                      setState(() {
                        TapSimu = false;
                      });
                    });
                    Future.delayed(Duration(seconds: 1), () {
                      Get.to(SimulationView());
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: TapSimu ? w * 0.5 : w * 0.25,
                    height: h * 0.2,
                    child: Card(
                      elevation: 10,
                      color: TapSimu ? Color(0xffEBC034) : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/Animation Logo 1 (1).png',
                          ),
                          Container(
                            width: w * 0.2,
                            child: FittedBox(
                              child: Text(
                                'SIMULATION',
                                style: GoogleFonts.alfaSlabOne(
                                    color: TapSimu
                                        ? Colors.white
                                        : Color(0xffC6C6C6)),
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
