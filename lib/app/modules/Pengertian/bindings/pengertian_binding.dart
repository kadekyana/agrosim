import 'package:get/get.dart';

import '../controllers/pengertian_controller.dart';

class PengertianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengertianController>(
      () => PengertianController(),
    );
  }
}
