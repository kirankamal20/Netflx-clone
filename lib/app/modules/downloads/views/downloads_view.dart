// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:netflix/app/global/const/colors.dart';
import 'package:netflix/app/global/const/fonts.dart';
import 'package:netflix/app/global/widgets/custom_appbar.dart';
import 'package:netflix/app/modules/downloads/widgets/container_rotaion.dart';

import '../controllers/downloads_controller.dart';

class DownloadsView extends GetView<DownloadsController> {
  Widget header() {
    return Row(
      children: [
        Icon(
          Icons.settings,
          color: kwhiteColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Smart Downloads',
          style: font.copyWith(fontSize: 15),
        ),
      ],
    );
  }

  Widget header2() {
    return Column(
      children: [
        Center(
          child: Text(
            "Introducing Downloads for you",
            style: font.copyWith(fontSize: Get.context!.height * 0.027),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.context!.width * 0.09,
                vertical: Get.context!.height * 0.02),
            child: Text(
              textAlign: TextAlign.center,
              "We'll download a personalised selection of \nmovies and shows for you,so there's always something to watch on your \ndevice.",
              style: TextStyle(fontSize: Get.context!.height * 0.02),
            ),
          ),
        ),
      ],
    );
  }

  Widget imageContainer() {
    return Container(
      // color: Colors.white,
      height: Get.context!.height * 0.41,
      width: Get.context!.width * 0.97,
      child: Obx(() => Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                controller.activeconnection.value == true
                    ? CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        radius: Get.context!.width * 0.36,
                      )
                    : CircularProgressIndicator(),
                ContainerRotation(
                  image: controller.images[0],
                  angle: 20,
                  color: Colors.red,
                  left: Get.context!.width * 0.35,
                  right: 0,
                  height: 0.25,
                  width: 0.4,
                  top: 9,
                ),
                ContainerRotation(
                  image: controller.images[1],
                  angle: -20,
                  color: Color.fromARGB(255, 54, 244, 219),
                  left: 0,
                  right: Get.context!.width * 0.35,
                  height: 0.25,
                  width: 0.4,
                  top: 9,
                ),
                ContainerRotation(
                  image: controller.images[2],
                  angle: 0,
                  left: 0,
                  right: 0,
                  color: Colors.yellow,
                  height: 0.3,
                  width: 0.42,
                  top: 0,
                ),
              ],
            ),
          )),
    );
  }

  Widget button1() {
    return SizedBox(
      width: Get.context!.width * 0.8,
      height: Get.context!.width * 0.10,
      child: MaterialButton(
        onPressed: () {},
        color: Colors.blueAccent[700],
        child: Text(
          'Setup',
          style: font.copyWith(
              color: kwhiteColor, fontSize: Get.context!.width * 0.039),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    );
  }

  Widget button2() {
    return SizedBox(
      width: Get.context!.width * 0.7,
      height: Get.context!.width * 0.1,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        onPressed: () {
          controller.checkUserConnection();
        },
        color: kwhiteColor,
        child: Text(
          'See what you can Download',
          style: font.copyWith(
              color: kBlackColor = Colors.black,
              fontSize: Get.context!.width * 0.037),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.checkUserConnection();
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar(
            text: 'Downloads',
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: Get.context!.height * 0.018,
              horizontal: Get.context!.width * 0.047),
          child: SingleChildScrollView(
            child: Column(
              children: [
                header(),
                SizedBox(
                  height: Get.context!.height * 0.02,
                ),
                header2(),
                SizedBox(
                  height: Get.context!.height * 0.02,
                ),
                imageContainer(),
                button1(),
                SizedBox(
                  height: Get.context!.height * 0.02,
                ),
                button2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
