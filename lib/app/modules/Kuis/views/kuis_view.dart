import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kuis_controller.dart';

class KuisView extends GetView<KuisController> {
  const KuisView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KuisView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'KuisView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
