import 'package:agrosim/app/modules/Game/views/game_view.dart';
import 'package:agrosim/app/modules/Home/views/home_view.dart';
import 'package:agrosim/app/modules/Statistic/views/statistic_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../controllers/bottom_bar_controller.dart';

class BottomBarView extends GetView<BottomBarController> {
  BottomBarView({Key? key}) : super(key: key);
  RxInt selectedIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (selectedIndex.value == 0) {
          return HomeView();
        } else if (selectedIndex.value == 1) {
          return GameView();
        } else {
          return StatisticView();
        }
      }),
      bottomNavigationBar: Obx(
        () => SalomonBottomBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xffFF6000),
          currentIndex: selectedIndex.value,
          onTap: (index) => selectedIndex.value = index,
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home_rounded),
              title: Text('Home'),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.games_rounded),
              title: Text('Game'),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.graphic_eq_sharp),
              title: Text('Statistic'),
            ),
          ],
        ),
      ),
    );
  }
}
