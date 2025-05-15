import 'package:get/get.dart';
import 'package:physiomobile_test/features/form/application/form_var.dart';

class FormController extends GetxController {
  void setTextField() {
    FormVar.email = FormVar.inputEmail.text;
    FormVar.name = FormVar.inputName.text;
    update();
  }
}