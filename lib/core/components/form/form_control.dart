// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:physiomobile_test/core/domain/validator/validator.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';

class FormValidation {
  static String? Function(String?)? validatorEmail = (input) => Validator.getValidate(input, ['required','email','min:3','max:255']);
  static String? Function(String?)? validatorRequired = (input) => Validator.getValidate(input, ['required','min:3','max:255']);
}

class FormControlLabel implements FormControl {
  static Widget inputText({
    EdgeInsetsGeometry? margin = const EdgeInsets.only(bottom: 16),
    String hintText = '',
    TextEditingController? controller,
    String? initialValue,
    String? labelText,
    bool obscureText = false,
    bool enabled = true,
    bool autofocus = false,
    bool readOnly = false,
    String? labelPosition = "left",
    int? maxLines = 1,
    Widget? prefixIcon,
    Widget? suffixIcon,
    FocusNode? focusNode,
    Color? backgroundColor,
    TextCapitalization textCapitalization = TextCapitalization.none,
    Function()? onTap,
    Function(String)? onChanged,
    Function(String)? onFieldSubmitted,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: labelPosition == "right" ? CrossAxisAlignment.end : labelPosition == "center" ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        LabelForm(text: labelText ?? ''),
        FormControl.inputText(
          margin: margin,
          hintText: hintText,
          controller: controller,
          initialValue: initialValue,
          obscureText: false,
          enabled: enabled,
          autofocus: false,
          readOnly: readOnly,
          maxLines: 1,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          textCapitalization: textCapitalization,
          onTap: onTap,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          focusNode: focusNode,
          backgroundColor: backgroundColor
        ),
      ],
    );
  }
}

class LabelForm extends StatelessWidget {
  const LabelForm({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeValue.size2),
      child: BodyText.extraSmall(text: text),
    );
  }
}

class FormControl {
  static Widget inputText({
    EdgeInsetsGeometry? margin = const EdgeInsets.only(bottom: 16),
    String hintText = '',
    TextEditingController? controller,
    String? initialValue,
    String? labelText,
    bool obscureText = false,
    bool enabled = true,
    bool autofocus = false,
    bool readOnly = false,
    FocusNode? focusNode,
    String? labelPosition = "left",
    int? maxLines = 1,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? backgroundColor,
    TextCapitalization textCapitalization = TextCapitalization.none,
    Function()? onTap,
    Function(String)? onChanged,
    Function(String)? onFieldSubmitted,
    String? Function(String?)? validator,
  }) {
    return FormBase.inputBase(
      margin: margin,
      hintText: hintText,
      controller: controller,
      initialValue: initialValue,
      obscureText: false,
      enabled: enabled,
      autofocus: false,
      readOnly: readOnly,
      maxLines: 1,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      textCapitalization: textCapitalization,
      onTap: onTap,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      focusNode: focusNode,
      backgroundColor: backgroundColor,
    );
  }
}

class FormBase {
  static Widget inputBase({
    EdgeInsetsGeometry? margin = const EdgeInsets.only(bottom: 16),
    String hintText = '',
    TextEditingController? controller,
    String? initialValue,
    bool obscureText = false,
    bool enabled = true,
    bool autofocus = false,
    bool readOnly = false,
    int? maxLines = 1,
    Widget? prefixIcon,
    Widget? suffixIcon,
    FocusNode? focusNode,
    TextInputType? keyboardType,
    Color? backgroundColor,
    TextCapitalization textCapitalization = TextCapitalization.none,
    List<TextInputFormatter>? inputFormatters,
    Function()? onTap,
    Function(String)? onChanged,
    Function(String)? onFieldSubmitted,
    String? Function(String?)? validator,
  }) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        controller: controller,
        initialValue: initialValue,
        style: TextStyle(
          color: enabled == true ? Colors.black : Colors.black.withOpacity(0.48),
          fontSize: FontSize.h6,
        ),
        cursorColor: Colors.grey,
        enabled: enabled,
        obscureText: obscureText,
        textCapitalization: textCapitalization,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        autofocus: autofocus,
        readOnly: readOnly,
        maxLines: maxLines,
        keyboardType: keyboardType,
        textAlignVertical: TextAlignVertical.center,
        inputFormatters: inputFormatters,
        decoration: FormStyle.inputDecoration(
          hintText: hintText,
          enabled: enabled,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          backgroundColor: backgroundColor
        ),
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        onTap: onTap,
        focusNode: focusNode,
      ),
    );
  }
}

class FormStyle {
  static InputDecoration inputDecoration({
    String? hintText,
    bool? enabled,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? backgroundColor
  }) {
    return InputDecoration(
      errorMaxLines: 2,
      hintText: hintText,
      hintStyle: TextStyle(
        color: enabled == true ? Colors.grey[400] : Colors.grey[300]!.withOpacity(0.48),
        fontSize: FontSize.small,
        fontWeight: FontWeight.w500
      ),
      filled: true,
      hoverColor: Colors.transparent,
      fillColor: enabled == true ? backgroundColor ?? Colors.grey[100] : Colors.grey[100]!.withOpacity(0.48),
      contentPadding: EdgeInsets.symmetric(vertical: SizeValue.size2, horizontal: SizeValue.size8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.grey[100]!,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.grey[200]!,
          width: 1.2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.grey[100]!.withOpacity(0.48),
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
          width: 1,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.red,
          width: 1,
        ),
      ),
      errorStyle: TextStyle(
        color: Colors.red,
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }
}