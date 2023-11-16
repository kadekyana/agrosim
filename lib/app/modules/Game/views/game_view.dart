import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:agrosim/app/modules/Kuis/views/kuis_view.dart';
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
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
                      Image.asset(
                        'images/game.png',
                        height: h * 0.5,
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
                            style: GoogleFonts.alfaSlabOne(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: w,
                height: h * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFF6000),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                        height: h * 0.25,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a nibh tincidunt, luctus lectus eu, consectetur arcu. Mauris rhoncus, justo id accumsan auctor, est metus pellentesque tellus, ac convallis elit libero et risus. Integer nunc sapien, congue eget finibus luctus, rhoncus sed lacus. Maecenas sed euismod ipsum. Donec et ligula vitae magna finibus porttitor vulputate sit amet mauris. Duis lacinia, metus rutrum tempor vehicula, sem metus rhoncus erat, ut viverra quam tortor quis orci. Mauris elementum maximus dapibus. Integer dapibus lectus ligula, tristique consectetur turpis euismod non. Morbi id justo tortor.',
                          style: GoogleFonts.breeSerif(
                              color: Colors.white, fontSize: 15),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
