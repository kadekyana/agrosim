import 'package:agrosim/app/modules/Knowledge/views/knowledge_view.dart';
import 'package:agrosim/app/modules/Simulation/views/simulation_view.dart';
import 'package:agrosim/app/modules/Video/views/video_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEBE4D1),
      appBar: AppBar(
        backgroundColor: Color(0xffEBE4D1),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_up_outlined,
                color: Color(0xffE53E34),
              ))
        ],
        title: Text(
          'AGROSIM',
          style: GoogleFonts.alfaSlabOne(color: Color(0xffE53E34)),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(KnowledgeView());
                  },
                  child: Container(
                    width: w * 0.2,
                    height: h * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
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
                GestureDetector(
                  onTap: () {
                    Get.to(VideoView());
                  },
                  child: Container(
                    width: w * 0.2,
                    height: h * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/Animation Logo 1.png'),
                        Container(
                          width: w * 0.1,
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
                GestureDetector(
                  onTap: () {
                    Get.to(SimulationView());
                  },
                  child: Container(
                    width: w * 0.2,
                    height: h * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
