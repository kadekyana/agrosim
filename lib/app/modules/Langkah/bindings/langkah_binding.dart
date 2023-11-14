import 'package:get/get.dart';

import '../controllers/langkah_controller.dart';

class LangkahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LangkahController>(
      () => LangkahController(),
    );
  }
}
