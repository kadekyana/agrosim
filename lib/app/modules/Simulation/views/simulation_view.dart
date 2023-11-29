import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:agrosim/app/modules/PenanamanJeruk/views/penanaman_jeruk_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/simulation_controller.dart';

class SimulationView extends GetView<SimulationController> {
  const SimulationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEBE4D1),
      appBar: AppbarView(
        back: true,
        data: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  elevation: 10,
                  color: Colors.transparent,
                  child: Container(
                    width: w * 0.2,
                    height: h * 0.15,
                    decoration: BoxDecoration(
                        color: Color(0xffEBC034),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'images/Animation Logo 1 (1).png',
                        ),
                        Container(
                          width: w * 0.15,
                          child: FittedBox(
                            child: Text(
                              'SIMULATION',
                              style:
                                  GoogleFonts.alfaSlabOne(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Get.to(PenanamanJerukView());
                },
                child: Container(
                  width: w,
                  height: h * 0.15,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'images/simulasi.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned.fill(
                        top: h * 0.04,
                        left: w * 0.25,
                        child: Text(
                          'PLAY',
                          style: GoogleFonts.alfaSlabOne(
                            fontSize: 60,
                            color: Color(0xffE53E34),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
