import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:netflix/app/global/theme/appthem.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Apptheme.appTheme,
     debugShowCheckedModeBanner: false,
        
    ),
  );
}
