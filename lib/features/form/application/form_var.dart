import 'package:flutter/material.dart';

class FormVar {
  //global key
  static GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();

  //text field
  static TextEditingController inputEmail = TextEditingController();
  static TextEditingController inputName = TextEditingController();

  //variable
  static String? email;
  static String? name;
}