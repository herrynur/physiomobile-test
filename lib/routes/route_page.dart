import 'package:get/route_manager.dart';
import 'package:physiomobile_test/features/splash/presentation/pages/splash_page.dart';
import 'package:physiomobile_test/routes/route_name.dart';

class RoutePage {
  static List<GetPage> routes = [
    GetPage(
      name: RouteName.splash,
      page: () => SplashPage(),
      transition: Transition.noTransition
    )
  ];
}