import 'package:get/get.dart';

import '../controllers/new_and_hot_controller.dart';

class NewAndHotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewAndHotController>(
      () => NewAndHotController(),
    );
  }
}
