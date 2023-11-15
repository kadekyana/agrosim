import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/simulation_controller.dart';

class SimulationView extends GetView<SimulationController> {
  const SimulationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarView(
        back: true,
      ),
      body: const Center(
        child: Text(
          'SimulationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
