import 'package:get/get.dart';
import 'package:netflix/app/modules/downloads/controllers/downloads_controller.dart';

import '../controllers/main_controller.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
      Get.lazyPut<DownloadsController>(
      () => DownloadsController(),
    );
  }
}
