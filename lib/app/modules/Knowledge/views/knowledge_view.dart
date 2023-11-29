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
                        height: h * 0.17,
                        child: Card(
                          elevation: 10,
                          color: Color(0xffFF6000),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  width: w * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: w * 0.3,
                                        child: FittedBox(
                                          child: Text(
                                            'Tentang Jeruk',
                                            style: GoogleFonts.alfaSlabOne(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: w * 0.5,
                                        child: FittedBox(
                                          child: Text(
                                            'Pengertian, Jenis dan Manfaat',
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.breeSerif(
                                                color: Colors.white),
                                          ),
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
                        height: h * 0.17,
                        child: Card(
                          elevation: 10,
                          color: Color(0xffEBC034),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  width: w * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: w * 0.3,
                                        child: FittedBox(
                                          child: Text(
                                            'Budidaya Jeruk',
                                            style: GoogleFonts.alfaSlabOne(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: w * 0.5,
                                        child: FittedBox(
                                          child: Text(
                                            'Alat, Budidaya dan Tata Cara',
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.breeSerif(
                                                color: Colors.white),
                                          ),
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
                        height: h * 0.17,
                        child: Card(
                          elevation: 10,
                          color: Color(0xff1E1E1E),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  width: w * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: w * 0.3,
                                        child: FittedBox(
                                          child: Text(
                                            'Penanaman Jeruk',
                                            style: GoogleFonts.alfaSlabOne(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: w * 0.5,
                                        child: FittedBox(
                                          child: Text(
                                            'Langkah - Langkah Menanam jeruk',
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.breeSerif(
                                                color: Colors.white),
                                          ),
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
