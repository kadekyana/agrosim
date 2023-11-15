import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistic_controller.dart';

class StatisticView extends GetView<StatisticController> {
  const StatisticView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarView(
        back: false,
      ),
      body: const Center(
        child: Text(
          'StatisticView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
