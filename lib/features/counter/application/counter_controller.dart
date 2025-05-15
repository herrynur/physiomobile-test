import 'package:get/get.dart';

class CounterController extends GetxController {
  int counter = 0;

  void counterUp() {
    counter++;
    update();
  }

  void counterDown() {
    if (counter == 0) {
      return;
    }
    counter--;
    update();
  }
}