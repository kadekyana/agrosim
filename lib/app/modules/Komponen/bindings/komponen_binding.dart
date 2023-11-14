import 'package:get/get.dart';

import '../controllers/komponen_controller.dart';

class KomponenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KomponenController>(
      () => KomponenController(),
    );
  }
}
