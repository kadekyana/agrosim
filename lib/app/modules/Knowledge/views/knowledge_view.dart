import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:agrosim/app/modules/Komponen/views/komponen_view.dart';
import 'package:agrosim/app/modules/Langkah/views/langkah_view.dart';
import 'package:agrosim/app/modules/Pengertian/views/pengertian_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/knowledge_controller.dart';

class KnowledgeView extends GetView<KnowledgeController> {
  const KnowledgeView({Key? key}) : super(key: key);
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
                        'images/BOOK LOGO 1.png',
                        color: Colors.white,
                      ),
                      Container(
                        width: w * 0.15,
                        child: FittedBox(
                          child: Text(
                            'KNOWLEDGE',
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
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(PengertianView());
                      },
                      child: Container(
                        width: w,
                        height: h * 0.15,
                        child: Card(
                          color: Color(0xffFF6000),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  width: w * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: w * 0.5,
                                        height: h * 0.03,
                                        child: Text(
                                          'Pengertian',
                                          style: GoogleFonts.alfaSlabOne(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        width: w * 0.5,
                                        height: h * 0.02,
                                        child: Text(
                                          'Pohon jeruk adalah pohon yang selalu berdaun hijau dengan umur produktif 50-60 tahun.',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.breeSerif(
                                              color: Color(0xffC6C6C6)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Container(
                                          height: h * 0.03,
                                          child: FilledButton(
                                              onPressed: () {},
                                              child: Text('READ'))),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: w * 0.25,
                                  child: Image.asset(
                                    'images/book 1.png',
                                    fit: BoxFit.none,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(KomponenView());
                      },
                      child: Container(
                        width: w,
                        height: h * 0.15,
                        child: Card(
                          color: Color(0xffEBC034),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  width: w * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: w * 0.5,
                                        height: h * 0.03,
                                        child: Text(
                                          'Komponen',
                                          style: GoogleFonts.alfaSlabOne(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        width: w * 0.5,
                                        height: h * 0.02,
                                        child: Text(
                                          '1. Bibit',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.breeSerif(
                                              color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Container(
                                          height: h * 0.03,
                                          child: FilledButton(
                                              onPressed: () {},
                                              child: Text('READ'))),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: w * 0.25,
                                  child: Image.asset(
                                    'images/book 1.png',
                                    fit: BoxFit.none,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(LangkahView());
                      },
                      child: Container(
                        width: w,
                        height: h * 0.15,
                        child: Card(
                          color: Color(0xff1E1E1E),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  width: w * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: w * 0.5,
                                        height: h * 0.03,
                                        child: Text(
                                          'Langkah - Langkah',
                                          style: GoogleFonts.alfaSlabOne(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        width: w * 0.5,
                                        height: h * 0.02,
                                        child: Text(
                                          'Siapkan lahan yang akan untuk menanam jeruk Campur pupuk dengan',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.breeSerif(
                                              color: Color(0xffC6C6C6)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Container(
                                          height: h * 0.03,
                                          child: FilledButton(
                                              onPressed: () {},
                                              child: Text('READ'))),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: w * 0.25,
                                  child: Image.asset(
                                    'images/book 1.png',
                                    fit: BoxFit.none,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
