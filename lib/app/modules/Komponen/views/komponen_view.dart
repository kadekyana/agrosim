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

  List<String> iklim = [
    'a. Jeruk memerlukan sekitar 5 sampai 9 bulan basah (musim hujan). Berfungsi untuk menjaga kelembaban tanah. ',
    'b. Temperatur optimal pada tanaman jeruk keprok adalah 20 derajat Celcius.',
    'c. Sinar matahari yang cukup dan kelembaban optimum sekitar 70-80%.',
  ];

  List<String> media = [
    'a. Tanah yang baik yakni lempung berpasir dengan fraksi liat 7 - 27%, debu 25-50% dan pasir < 50%, humus, tata air dan udara yang baik.',
    'b. Jenis tanah andosol dan latosol sangat cocok untuk budidaya jeruk keprok.',
    'c. Derajat keasaman (pH) tanah sekitar 5,5 - 6,5 dengan pH optimum yakni 6.',
    'd. Air tanah yang optimal berada pada kedalaman 150-200 cm di bawah permukaan tanah.',
    'e. Tanaman jeruk sangat cocok dengan air yang mengandung garam sekitar 10%.',
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
        child: SingleChildScrollView(
          child: Column(
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
                          'Alat dan Bahan',
                          style: GoogleFonts.alfaSlabOne(),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: w,
                      height: h * 0.45,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 9,
                        itemExtent: 30.0,
                        itemBuilder: (context, index) {
                          final item =
                              (index + 1).toString() + ". " + items[index];
                          return ListTile(
                            title: Text(
                              item,
                              style: GoogleFonts.breeSerif(
                                  color: Color(0xff898989)),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w,
                height: h * 0.04,
                child: FittedBox(
                  child: Text(
                    'Syarat Budidaya Jeruk',
                    style: GoogleFonts.alfaSlabOne(),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                width: w,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  '1. IKLIM',
                  style: GoogleFonts.breeSerif(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: w,
                height: h * 0.3,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: iklim.length,
                  itemBuilder: (context, index) {
                    final item = iklim[index];
                    return ListTile(
                      title: Text(
                        item,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.breeSerif(color: Color(0xff898989)),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: w,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  '2. MEDIA TANAM',
                  style: GoogleFonts.breeSerif(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: w,
                height: h * 0.55,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: media.length,
                  itemBuilder: (context, index) {
                    final item = media[index];
                    return ListTile(
                      title: Text(
                        item,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.breeSerif(color: Color(0xff898989)),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
            ], // ni
          ),
        ),
      ),
    );
  }
}
