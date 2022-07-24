import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fastlaugh_controller.dart';

class FastlaughView extends GetView<FastlaughController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'FastlaughView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
