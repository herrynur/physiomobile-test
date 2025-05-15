import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:physiomobile_test/core/components/button/button.dart';
import 'package:physiomobile_test/core/components/form/form_control.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';
import 'package:physiomobile_test/features/form/application/form_controller.dart';
import 'package:physiomobile_test/features/form/application/form_var.dart';

class FormPage extends StatelessWidget {
  FormPage({super.key});

  final FormController _formController = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: FormVar.formGlobalKey,
          child: GetBuilder<FormController>(
            builder: (_) {
              return ListView(
                padding: EdgeInsets.symmetric(vertical: SizeValue.size10, horizontal: SizeValue.size10),
                children: [
                  BodyText.medium(
                    text: "Form Input",
                    weight: FontWeight.bold,
                    margin: EdgeInsets.only(bottom: SizeValue.size10)
                  ),
                  FormControlLabel.inputText(
                    labelText: "Fullname",
                    validator: FormValidation.validatorRequired,
                    controller: FormVar.inputName
                  ),
                  FormControlLabel.inputText(
                    labelText: "Email",
                    validator: FormValidation.validatorEmail,
                    controller: FormVar.inputEmail
                  ),
                  Visibility(
                    visible: FormVar.email != null && FormVar.name != null,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyText.small(
                          text: "Fullname : ${FormVar.name}",
                          color: Colors.black
                        ),
                        BodyText.small(
                          text: "Email : ${FormVar.email}",
                          color: Colors.black
                        ),
                      ],
                    ),
                  ),
                  ButtonFill.primary(
                    title: "Submit",
                    margin: EdgeInsets.only(top: SizeValue.size10),
                    onPressed: () async {
                      if (FormVar.formGlobalKey.currentState!.validate()) {
                        _formController.setTextField();
                        const snackBar = SnackBar(content: Text('Successfully'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}