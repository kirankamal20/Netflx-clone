import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ContainerRotation extends StatelessWidget {
  final double left;
  final double right;
  final double top;
  final int angle;
  final Color color;
  final String? image;
  final double height;
  final double width;
  ContainerRotation({
    Key? key,
    required this.left,
    required this.right,
    required this.angle,
    required this.color,
    required this.image,
    required this.height,
    required this.width,
    required this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right, top: top),
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: image != null
            ? Container(
                height: Get.context!.height * height,
                width: Get.context!.width * width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(image!),
                  ),
                ),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
