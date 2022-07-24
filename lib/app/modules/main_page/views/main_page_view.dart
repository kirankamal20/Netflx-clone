import 'package:flutter/material.dart';

import 'package:get/get.dart';
 import 'package:netflix/app/modules/downloads/views/downloads_view.dart';
import 'package:netflix/app/modules/fastlaugh/views/fastlaugh_view.dart';
import 'package:netflix/app/modules/homepage/views/homepage_view.dart';
import 'package:netflix/app/modules/main_page/widgets/bottomnav.dart';
import 'package:netflix/app/modules/new_and_hot/views/new_and_hot_view.dart';
import 'package:netflix/app/modules/search/views/search_view.dart';

import '../controllers/main_controller.dart';

class MainPage extends GetView<MainController> {
  final List<StatelessWidget> pages = [
    HomepageView(),
    NewAndHotView(),
    SearchView(),
    FastlaughView(),
    DownloadsView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.index.value]),
      bottomNavigationBar: BottomNav(
        homeController: controller,
      ),
    );
  }
}
