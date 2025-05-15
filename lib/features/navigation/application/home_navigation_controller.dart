import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNavigationController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabNavController = TabController(length: menuNavigations.length, animationDuration: const Duration(milliseconds: 150), vsync: this);

    final List<TabbarModel> menuNavigations = [
    TabbarModel(
      title: 'Home', 
      icon: Icons.home
    ),
    TabbarModel(
      title: 'Counter', 
      icon: Icons.add_circle_outline_rounded
    ),
    TabbarModel(
      title: 'Form', 
      icon: Icons.format_align_left_rounded
    ),
  ];

  int lastTab = 0;

  @override
  void onInit() {
    tabNavController.animateTo(0);
    lastTab = 0;
    update();
    super.onInit();
  }

  void setBottomNavbar(int value) {
    tabNavController.animateTo(value);
    lastTab = value;
    update();
  }
}

class TabbarModel {
  String title;
  IconData icon;

  TabbarModel({
    required this.title,
    required this.icon
  });
}