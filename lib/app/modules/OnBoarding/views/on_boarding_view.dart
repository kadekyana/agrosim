import 'package:agrosim/app/modules/BottomBar/views/bottom_bar_view.dart';
import 'package:agrosim/app/modules/Home/views/home_view.dart';
import 'package:agrosim/app/modules/OnBoarding/views/on_pages.dart';
import 'package:agrosim/notif.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final OnBoardingController controller = Get.put(OnBoardingController());
  final NotificationService notificationService = NotificationService();
  int pageIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notificationService.showNotification(1, 'Testing', 'Ngetes Ajah');
    });
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<OnboardingPages> pages = [
    OnboardingPages(
        title: 'WELCOME TO AGROSIM',
        description:
            'THIS APPLICATION IS DESIGNED TO HELP YOU LEARN AND PRACTICE THE PROCESS OF ORANGE FARMING AND FERTILIZATION',
        images: 'images/JERUK 1.png'),
    OnboardingPages(
        title: 'WELCOME TO AGROSIM',
        description:
            'Didalam aplikasi Agrosim terdapat tiga fitur utama yaitu Knowledge untuk bagian pengetahuan, Fitur Animation untuk menampilkan video penanaman jeruk, dan ada Fitur Simulasi untuk simulasi menanam jeruk. ',
        images: 'images/Group 3.png'),
    OnboardingPages(
        title: 'WELCOME TO AGROSIM',
        description:
            'Didalam aplikasi Agrosim terdapat tiga Menu utama yaitu Home untuk menampilkan fitur fitur yang tersedia, Menu Game untuk menampilakn game dan Menu Statistic untuk melihat skor hasil game. ',
        images: 'images/Group 4.png')
  ];

  @override
  Widget build(BuildContext context) {
    final FMQH =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Color(0xffEBE4D1),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (int index) {
                setState(() {
                  pageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                OnboardingPages page = pages[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Container(
                        height: FMQH * 0.06,
                        child: FittedBox(
                          child: Text(
                            'AGROSIM',
                            style: GoogleFonts.alfaSlabOne(
                                color: Color(0xffE53E34)),
                          ),
                        ),
                      ),
                      Container(
                        height: FMQH * 0.04,
                        child: FittedBox(
                          child: Text(
                            page.title,
                            style: GoogleFonts.alfaSlabOne(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: FMQH * 0.01,
                      ),
                      Container(
                          height: FMQH * 0.3, child: Image.asset(page.images)),
                      SizedBox(
                        height: FMQH * 0.01,
                      ),
                      Container(
                        height: FMQH * 0.15,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          page.description,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.breeSerif(
                              fontWeight: FontWeight.w400,
                              color: Color(0xffEBC034)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: FMQH * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => DotNav(index, context),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 100),
            child: FilledButton(
              onPressed: () {
                if (pageIndex == pages.length - 1) {
                  Get.to(BottomBarView());
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceInOut);
              },
              child: Text(
                pageIndex == pages.length - 1 ? 'GET STARTED' : "NEXT",
                style: GoogleFonts.alfaSlabOne(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xffFF6000)),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container DotNav(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      height: 10,
      width: pageIndex == index ? 20 : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber),
    );
  }
}
