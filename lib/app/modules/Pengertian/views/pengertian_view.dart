import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
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
      appBar: AppbarView(
        back: true,
        data: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: w * 0.9,
                height: h * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  'images/Rectangle 11.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: w,
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.01,
                    ),
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
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jeruk merupakan tumbuhan berbunga anggota marga Citrus sari suku Rutaceae. Berbentuk pohon dengan buah yang berdaging dengan rasa masam ataupun manis yang segar. Jeruk sangat beragam bahkan beberapa spesies dapat bersilangan dan menghasilkan hibrida antarspesies (interspecific hybrid).',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                              height:
                                  15), // Spasi antara teks dan informasi klasifikasi

                          Text(
                            'Klasifikasi Botani Tanaman Jeruk:',
                            style: GoogleFonts.breeSerif(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                              height: 8), // Spasi antara judul dan klasifikasi

                          Text(
                            'Divis\t\t: Spermatophyta (tumbuhan berbiji)',
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Subdivisi\t: Angiospermae (berbiji tertutup)',
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Kelas\t\t: Dicotyledonae (biji berkeping dua)',
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Ordo\t\t: Rutales',
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Keluarga\t: Rutaceae',
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Genus\t\t: Citrus',
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Spesies\t: Citrus sp.',
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: h * 0.05),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w,
                child: Column(
                  children: [
                    Container(
                      width: w,
                      height: h * 0.04,
                      child: FittedBox(
                        child: Text(
                          'Jenis - Jenis Jeruk',
                          style: GoogleFonts.alfaSlabOne(),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1. Jeruk manis (Citrus sinensis L.)\n'
                            'Jeruk manis memiliki rasa yang manis dan segar, dan biasa dikonsumsi langsung, dijus, atau dibuat manisan. Jeruk manis juga mengandung banyak vitamin C, yang bermanfaat untuk menjaga daya tahan tubuh.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '2. Jeruk keprok (Citrus reticulata)\n'
                            'Jeruk keprok memiliki rasa yang manis dan segar, dan juga mengandung banyak vitamin C. Jeruk keprok biasa dikonsumsi langsung, dijus, atau dibuat asinan.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '3. Jeruk siam (Citrus nobilis)\n'
                            'Jeruk siam biasa digunakan sebagai bahan pelengkap masakan, seperti sambal, lalapan, atau asinan. Jeruk siam juga memiliki banyak manfaat kesehatan, seperti untuk menurunkan tekanan darah dan kolesterol.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '4. Jeruk besar (Citrus maxima Merr, Citrus grandis Osbeck)\n'
                            'Jeruk besar memiliki rasa yang manis dan segar, dan juga mengandung banyak vitamin C. Jeruk besar biasa dikonsumsi langsung, dijus, atau dibuat manisan.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '5. Jeruk lemon (Citrus limon Linn)\n'
                            'Jeruk lemon biasa digunakan sebagai bahan pelengkap masakan, seperti salad, ikan bakar, atau minuman. Jeruk lemon juga memiliki banyak manfaat kesehatan, seperti untuk meningkatkan daya tahan tubuh dan pencernaan.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '6. Jeruk nipis (Citrus aurantifolia Swingle)\n'
                            'Jeruk nipis biasa digunakan sebagai bahan pelengkap masakan, seperti sambal, lalapan, atau asinan. Jeruk nipis juga memiliki banyak manfaat kesehatan, seperti untuk menurunkan tekanan darah dan kolesterol.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w,
                child: Column(
                  children: [
                    Container(
                      width: w,
                      height: h * 0.04,
                      child: FittedBox(
                        child: Text(
                          'Manfaat Jeruk',
                          style: GoogleFonts.alfaSlabOne(),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Buah jeruk mengandung banyak vitamin, mineral, serta serat esensial yang tak bisa diproduksi oleh tubuh. Sehingga buah jeruk dapat menjaga daya tahan dan keseimbangan tubuh agar tetap sehat. Berikut ini beberapa manfaat dari buah jeruk. ',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '1. Memperbaiki jaringan sel-sel kulit mati sehingga bagus untuk menjaga kesehatan dan kecerahan kulit.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '2. Sebagai sumber alami asam folik yang berfungsi untuk mengurangi resiko wanita hamil melahirkan bayi dengan down syndrome.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '3. Sari buah jeruk dapat menyembuhkan gangguan pendarahan karena wasir, ',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '4. Air jeruk dapat mengobati gangguan pencernaan.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Text(
                            '5. Merupakan sumber serat yang bermanfaat untuk mengurangi resiko penyakit diabetes, berdasarkan penelitian Diabetes and Metabolic Journal.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.breeSerif(
                              color: Color(0xff898989),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
