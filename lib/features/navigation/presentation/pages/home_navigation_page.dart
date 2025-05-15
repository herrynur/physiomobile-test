import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/features/counter/presentation/pages/counter_page.dart';
import 'package:physiomobile_test/features/navigation/application/home_navigation_controller.dart';
import 'package:physiomobile_test/features/navigation/presentation/widgets/home_navigation_child_widget.dart';

class HomeNavigationPage extends StatelessWidget {
  HomeNavigationPage({super.key});

  final HomeNavigationController _homeNavigationController = Get.put(HomeNavigationController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    DateTime currentBackPressTime = DateTime.now();
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
         //close confirmation
        DateTime now = DateTime.now();
        if (now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
          currentBackPressTime = now;
          const snackBar = SnackBar(content: Text('Tap again to exit'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          return;
        } else {
          Future.delayed(const Duration(milliseconds: 1000), () {
            exit(0);
          });
        }
      },
      child: SafeArea(
        bottom: true,
        top: false,
        left: false,
        right: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: GetBuilder<HomeNavigationController>(
            init: _homeNavigationController,
            builder: (controller) {
              return TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.tabNavController,
                children: [
                  Container(color: Colors.blue,),
                  CounterPage(),
                  Container(color: Colors.red,)
                ],
              );
            },
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 6.0,
                  offset: const Offset(3.0, 0),
                  color: Colors.grey[200]!
                )
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(SizeValue.size8),
                topRight: Radius.circular(SizeValue.size8)
              )
            ),
            alignment: Alignment.center,
            height: screenHeight * .09,
            child: GetBuilder<HomeNavigationController>(
              builder: (controller) {
                return TabBar(
                  padding: EdgeInsets.only(top: SizeValue.size7),
                  controller: controller.tabNavController,
                  indicatorColor: Colors.transparent,
                  tabAlignment: TabAlignment.fill,
                  tabs: controller.menuNavigations.asMap().entries.map((e) => HomeNavigationChildWidget(
                    title: e.value.title, 
                    icon: e.value.icon, 
                    isSelected: e.key == controller.tabNavController.index
                  )).toList(),
                  onTap: (value) {
                    _homeNavigationController..tabNavController.animateTo(value)..setBottomNavbar(value);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}