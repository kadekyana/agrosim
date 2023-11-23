import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../controllers/penanaman_jeruk_controller.dart';

class PenanamanJerukView extends StatefulWidget {
  PenanamanJerukView({Key? key}) : super(key: key);

  @override
  State<PenanamanJerukView> createState() => _PenanamanJerukViewState();
}

class _PenanamanJerukViewState extends State<PenanamanJerukView> {
  final PenanamanJerukController controller =
      Get.put(PenanamanJerukController());
  int totalSiram = 0;
  List<String> tools = [
    'Sekop',
    'Bibit',
    'Penyiram',
    'Pestisida',
    'Pupuk Pertama',
    'Pupuk Kedua',
    'Pupuk Ketiga',
  ];
  List<String> selectedTools = [];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h,
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              width: w,
              height: h,
              child: Image.asset(
                'images/simulasi/bg.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 100,
              right: 100,
              child: Container(
                width: w * 0.5,
                child: Transform.flip(
                  flipX: true,
                  child: LottieBuilder.network(
                      'https://lottie.host/20052e7d-7dc6-4d07-b296-a88dcc9eed3e/lpQKIOVJXK.json'),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 35,
              child: Container(
                width: w * 0.8,
                height: h * 0.1,
                decoration: BoxDecoration(
                    color: Color(0xffEBE4D1),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tools.length,
                  itemBuilder: (context, index) {
                    return Draggable<String>(
                        data: tools[index],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Container(
                            width: 60,
                            height: h,
                            child: Image.asset(
                                'images/simulasi/${tools[index]}.png'),
                          ),
                        ),
                        feedback:
                            Image.asset('images/simulasi/${tools[index]}.png'));
                  },
                ),
              ),
            ),
            Positioned(
                top: 100,
                child: Image.asset(
                  'images/simulasi/pengumuman.png',
                )),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                width: w * 0.5,
                height: h * 0.2,
                child: DragTarget<String>(
                  onWillAccept: (data) {
                    return true;
                  },
                  builder: (context, candidateData, rejectedData) {
                    bool dataBibit = selectedTools.contains('Bibit');
                    bool dataPanen = selectedTools.contains('Pestisida');
                    return Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Tampilkan gambar tanah.png jika sekop di-drop
                          if (selectedTools.contains('Sekop'))
                            Image.asset('images/simulasi/Tanah.png'),
                          if (dataBibit)
                            Positioned(
                              right: selectedTools.indexOf('Bibit.png') * -75,
                              bottom: selectedTools.indexOf('Bibit.png') * -50,
                              child: Image.asset('images/simulasi/Bibit.png'),
                            ),
                          if (totalSiram == 1)
                            Positioned(
                              right: selectedTools.indexOf('1bulan.png') * -30,
                              bottom: selectedTools.indexOf('1bulan.png') * -40,
                              child: Image.asset('images/simulasi/1bulan.png'),
                            ),
                          if (totalSiram == 2)
                            Positioned(
                              left: selectedTools.indexOf('2bulan.png') * -20,
                              bottom: selectedTools.indexOf('2bulan.png') * -40,
                              child: Image.asset('images/simulasi/2bulan.png'),
                            ),
                          if (totalSiram == 3)
                            Positioned(
                              left: selectedTools.indexOf('berbunga.png') * 0,
                              bottom:
                                  selectedTools.indexOf('berbunga.png') * -40,
                              child:
                                  Image.asset('images/simulasi/berbunga.png'),
                            ),
                          if (totalSiram == 4)
                            Positioned(
                                top: -410,
                                right: 0,
                                child: Container(
                                  width: w * 0.4,
                                  height: h * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Tanaman Mu Terserang Hama , Gunakan Pestisida untuk Membunuh Hama',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.breeSerif(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                )),
                          if (totalSiram == 4)
                            Positioned(
                              right: selectedTools.indexOf('berbuah.png') * 25,
                              bottom:
                                  selectedTools.indexOf('berbuah.png') * -20,
                              child: Image.asset('images/simulasi/berbuah.png'),
                            ),
                          if (dataPanen)
                            Positioned(
                              right:
                                  selectedTools.indexOf('siappanen.png') * 20,
                              bottom:
                                  selectedTools.indexOf('siappanen.png') * -20,
                              child:
                                  Image.asset('images/simulasi/siappanen.png'),
                            ),
                          if (dataPanen)
                            Positioned(
                                top: -410,
                                right: 0,
                                child: Container(
                                  width: w * 0.4,
                                  height: h * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Yey Tanaman mu sudah bebas dari hama',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.breeSerif(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                )),
                          if (totalSiram == 5)
                            Positioned(
                              right: selectedTools.indexOf('panen.png') * 10,
                              bottom: selectedTools.indexOf('panen.png') * -20,
                              child: Image.asset('images/simulasi/panen.png'),
                            ),
                        ],
                      ),
                    );
                  },
                  onAccept: (data) {
                    print(data);
                    setState(() {
                      if (data == 'Penyiram') {
                        // totalSiram = selectedTools
                        //     .where((item) => item == 'Penyiram.png')
                        //     .length;
                        selectedTools.remove('Bibit');
                        selectedTools.remove('Pestisida');
                        totalSiram++;
                        // if (totalSiram == 1) {
                        // } else {
                        //   selectedTools.add(data);
                        // }
                        Get.snackbar('Berhasil', 'Menambah $data',
                            snackPosition: SnackPosition.TOP,
                            duration: Duration(seconds: 2));
                      } else {
                        selectedTools.add(data);
                        Get.snackbar('Berhasil', 'Menambah $data',
                            snackPosition: SnackPosition.TOP,
                            duration: Duration(seconds: 2));
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
