import 'package:get/get.dart';
import 'package:physiomobile_test/routes/route_name.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(Duration(seconds: 5));
    Get.toNamed(RouteName.home);
    super.onInit();
  }
}