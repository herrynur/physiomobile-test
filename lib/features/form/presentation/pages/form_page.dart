import 'package:flutter/material.dart';
import 'package:physiomobile_test/core/components/button/button.dart';
import 'package:physiomobile_test/core/components/form/form_control.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';
import 'package:physiomobile_test/features/form/application/form_var.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: FormVar.formGlobalKey,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: SizeValue.size10, horizontal: SizeValue.size10),
            children: [
              BodyText.medium(
                text: "Form Input",
                weight: FontWeight.bold,
                margin: EdgeInsets.only(bottom: SizeValue.size10)
              ),
              FormControlLabel.inputText(
                labelText: "Fullname",
                validator: FormValidation.validatorRequired
              ),
              FormControlLabel.inputText(
                labelText: "Email",
                validator: FormValidation.validatorEmail
              ),
              ButtonFill.primary(
                title: "Submit",
                margin: EdgeInsets.only(top: SizeValue.size10),
                onPressed: () async {
                  if (FormVar.formGlobalKey.currentState!.validate()) {
                    const snackBar = SnackBar(content: Text('Successfully'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}