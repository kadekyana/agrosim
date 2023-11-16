import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/penanaman_jeruk_controller.dart';

class PenanamanJerukView extends GetView<PenanamanJerukController> {
  const PenanamanJerukView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PenanamanJerukView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PenanamanJerukView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
