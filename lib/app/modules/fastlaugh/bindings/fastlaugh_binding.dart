import 'package:get/get.dart';

import '../controllers/fastlaugh_controller.dart';

class FastlaughBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FastlaughController>(
      () => FastlaughController(),
    );
  }
}
