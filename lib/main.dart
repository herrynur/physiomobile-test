import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:physiomobile_test/routes/route_name.dart';
import 'package:physiomobile_test/routes/route_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'physiomobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: RouteName.splash,
      getPages: RoutePage.routes,
    );
  }
}
