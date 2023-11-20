import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:agrosim/app/modules/Kuis/controllers/kuis_controller.dart';
import 'package:agrosim/sql_helper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/statistic_controller.dart';

class StatisticView extends GetView<StatisticController> {
  const StatisticView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppbarView(
        back: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset(
                  'images/tes.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: w,
              height: h * 0.025,
              child: FittedBox(
                child: Text(
                  'YOUR RESULT',
                  style: GoogleFonts.alfaSlabOne(color: Color(0xffE53E34)),
                ),
              ),
            ),
            Container(
              width: w,
              height: h * 0.6,
              child: FutureBuilder<List<Map<String, dynamic>>>(
                future: SQLHelper.getScore(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Text('Tidak ada data hasil kuis.');
                  } else {
                    List<Map<String, dynamic>> quizResults = snapshot.data!;
                    return ListView.builder(
                      itemCount: quizResults.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> result = quizResults[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Container(
                            width: w,
                            height: h * 0.13,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff59CE8F),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Quiz',
                                      style: GoogleFonts.alfaSlabOne(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    Text(
                                      result['timestamp'],
                                      style: GoogleFonts.breeSerif(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${result['score']}%',
                                      style: GoogleFonts.alfaSlabOne(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Text(
                                      'COREECT',
                                      style: GoogleFonts.alfaSlabOne(
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            // ListTile(
                            //   title: Text('Skor: ${result['score']}'),
                            //   subtitle: Text('Waktu: ${result['timestamp']}'),
                            // ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
