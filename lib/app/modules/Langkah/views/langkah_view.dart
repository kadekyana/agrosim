import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/langkah_controller.dart';

class LangkahView extends GetView<LangkahController> {
  LangkahView({Key? key}) : super(key: key);

  List<String> langkah = [
    "Siapkan lahan yang akan untuk menanam jeruk",
    "Campur pupuk dengan tananh sebelum penanaman",
    "Pilih bibit jeruk yang akan ditanam lalu tanam",
    "Siram tanaman jeruk",
    "Berikan perawatan dan obat 3 bulan sekali",
    "Setelah 1 tahun jeruk siap dipanen",
  ];

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
            Container(
              width: w * 0.9,
              height: h * 0.3,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'images/KONTEN KNOWLEDGE (1).png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: w,
              height: h * 0.5,
              child: Column(
                children: [
                  Container(
                    width: w * 0.9,
                    height: h * 0.04,
                    child: FittedBox(
                      child: Text(
                        'Langkah - Langkah Penanaman Jeruk',
                        style: GoogleFonts.alfaSlabOne(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: w,
                    height: h * 0.4,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemExtent: 40.0,
                      itemBuilder: (context, index) {
                        final item =
                            (index + 1).toString() + ". " + langkah[index];
                        return ListTile(
                          title: Text(
                            item,
                            textAlign: TextAlign.justify,
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
