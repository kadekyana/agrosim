import 'package:get/get.dart';

import '../controllers/pembahasan_kuis_controller.dart';

class PembahasanKuisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PembahasanKuisController>(
      () => PembahasanKuisController(),
    );
  }
}
