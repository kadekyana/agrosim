import 'package:get/get.dart';

import '../controllers/penanaman_jeruk_controller.dart';

class PenanamanJerukBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PenanamanJerukController>(
      () => PenanamanJerukController(),
    );
  }
}
