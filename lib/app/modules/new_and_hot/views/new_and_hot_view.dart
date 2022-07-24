import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:netflix/app/global/widgets/custom_appbar.dart';

import '../controllers/new_and_hot_controller.dart';

class NewAndHotView extends GetView<NewAndHotController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar(
            text: 'New & Hot',
          ),
        ),
        body: Center(
          child: Text(
            'NewAndHotView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
