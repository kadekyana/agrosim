import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/pengertian_controller.dart';

class PengertianView extends GetView<PengertianController> {
  const PengertianView({Key? key}) : super(key: key);
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
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xffE53E34),
            )),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: w * 0.9,
              height: h * 0.3,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'images/Rectangle 11.png',
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
                        'Pengertian',
                        style: GoogleFonts.alfaSlabOne(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: w,
                    child: Text(
                      'Pohon jeruk adalah pohon yang selalu berdaun hijau dengan umur produktif 50-60 tahun. Beberapa pohon jeruk yang dirawat dengan baik dapat hidup hingga 100 tahun atau lebih. Tanaman jeruk (Citrus x sinensis) tergolong dalam keluarga Rutaceae. Pohonnya adalah pohon berbunga dan tingginya saat dewasa dapat berkisar antara 16 dan 50 kaki (antara 5m dan 15m).',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.breeSerif(
                          color: Color(0xff898989), fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
