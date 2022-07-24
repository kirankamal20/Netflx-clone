// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:netflix/app/modules/main_page/controllers/main_controller.dart';

class BottomNav extends StatelessWidget {
  final MainController homeController;
  BottomNav({
    Key? key,
    required this.homeController,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 13,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions),
              label: 'Fast laugh',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Downloads',
            ),
          ],
          currentIndex: homeController.index.value,
          // selectedItemColor: Colors.white,
          // unselectedItemColor: Colors.grey,
          iconSize: 27,
          onTap: ((value) {
            homeController.index.value = value;
            print(value);
          }),
          elevation: 0),
    );
  }
}
