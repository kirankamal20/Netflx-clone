import 'dart:io';

import 'package:get/get.dart';

class DownloadsController extends GetxController {
  final activeconnection = false.obs;

  Future<void> oninit() async {
    super.onInit();
    
  }

  final List<String> images = [
    'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:ote-MjksIEp1bCAyMDIy,ots-29,otc-FFFFFF,oy-612,ox-24:q-80/et00330663-xtyfqswmej-portrait.jpg',
    'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:ote-NSwgQXVnIDIwMjI%3D,ots-29,otc-FFFFFF,oy-612,ox-24:q-80/et00329656-pegmwjqjth-portrait.jpg',
    'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:ote-NSwgQXVnIDIwMjI%3D,ots-29,otc-FFFFFF,oy-612,ox-24:q-80/et00108037-drtpkyrsll-portrait.jpg'
  ];

  String T = "";
  Future<void> checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        activeconnection.value = true;
        print("connected");
      }
    } on SocketException catch (_) {
      activeconnection.value = false;
      print('Not connected');
    }
  }
}
