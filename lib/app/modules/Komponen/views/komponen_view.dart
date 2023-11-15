import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/komponen_controller.dart';

class KomponenView extends GetView<KomponenController> {
  KomponenView({Key? key}) : super(key: key);
  List<String> items = [
    "bibit",
    "Lahan",
    "Pupuk dan Air",
    "Obat Tanaman Jeruk",
    "Pestisida",
    "Mesin Kompresor",
    "Selang Air",
    "Cangkul",
    "Mesin Penyemprot Obat",
  ];
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
            Container(
              width: w * 0.9,
              height: h * 0.3,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'images/KONTEN KNOWLEDGE.png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: w,
              height: h * 0.5,
              child: Column(
                children: [
                  Container(
                    width: w,
                    height: h * 0.04,
                    child: FittedBox(
                      child: Text(
                        'Komponen',
                        style: GoogleFonts.alfaSlabOne(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: w,
                    height: h * 0.4,
                    child: ListView.builder(
                      itemCount: 9,
                      itemExtent: 30.0,
                      itemBuilder: (context, index) {
                        final item =
                            (index + 1).toString() + ". " + items[index];
                        return ListTile(
                          title: Text(
                            item,
                            style:
                                GoogleFonts.breeSerif(color: Color(0xff898989)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
