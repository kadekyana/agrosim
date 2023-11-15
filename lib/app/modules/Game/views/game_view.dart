import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_controller.dart';

class GameView extends GetView<GameController> {
  const GameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarView(
        back: false,
      ),
      body: const Center(
        child: Text(
          'GameView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
