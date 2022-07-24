import 'package:get/get.dart';

import 'package:netflix/app/modules/downloads/bindings/downloads_binding.dart';
import 'package:netflix/app/modules/downloads/views/downloads_view.dart';
import 'package:netflix/app/modules/fastlaugh/bindings/fastlaugh_binding.dart';
import 'package:netflix/app/modules/fastlaugh/views/fastlaugh_view.dart';
import 'package:netflix/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:netflix/app/modules/homepage/views/homepage_view.dart';
import 'package:netflix/app/modules/main_page/bindings/main_page_binding.dart';
import 'package:netflix/app/modules/main_page/views/main_page_view.dart';
import 'package:netflix/app/modules/new_and_hot/bindings/new_and_hot_binding.dart';
import 'package:netflix/app/modules/new_and_hot/views/new_and_hot_view.dart';
import 'package:netflix/app/modules/search/bindings/search_binding.dart';
import 'package:netflix/app/modules/search/views/search_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainPage(),
      binding: MainPageBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.DOWNLOADS,
      page: () => DownloadsView(),
      binding: DownloadsBinding(),
    ),
    GetPage(
      name: _Paths.NEW_AND_HOT,
      page: () => NewAndHotView(),
      binding: NewAndHotBinding(),
    ),
    GetPage(
      name: _Paths.FASTLAUGH,
      page: () => FastlaughView(),
      binding: FastlaughBinding(),
    ),
  ];
}
