import 'package:flutter/material.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';

//Body text atau text standart
class BodyText {
  static Widget medium({
    required String text,
    EdgeInsetsGeometry? margin,
    FontWeight? weight,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    TextDecoration? decoration
  }) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          decoration: decoration,
          fontSize: FontSize.h2,
          fontFamily: "Inter",
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.w400,
        ),
      ),
    );
  }

  static Widget small({
    required String text,
    EdgeInsetsGeometry? margin,
    FontWeight? weight,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    TextDecoration? decoration
  }) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          decoration: decoration,
          fontSize: FontSize.small,
          fontFamily: "Inter",
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.w400,
        ),
      ),
    );
  }

  static Widget extraSmall({
    required String text,
    EdgeInsetsGeometry? margin,
    FontWeight? weight,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    TextDecoration? decoration
  }) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          decoration: decoration,
          fontSize: FontSize.extraSmall,
          fontFamily: "Inter",
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.w400,
        ),
      ),
    );
  }

  static Widget contentSmall({
    required String text,
    EdgeInsetsGeometry? margin,
    FontWeight? weight,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    TextDecoration? decoration
  }) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          decoration: decoration,
          fontSize: FontSize.contentSmall,
          fontFamily: "Inter",
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.w300,
        ),
      ),
    );
  }
}