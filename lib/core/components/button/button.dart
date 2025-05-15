// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';

class ButtonFill {
  static Widget primary({
    bool isLoading = false,
    VoidCallback? onPressed,
    String? title,
    bool? enabled = true,
    double? width,
    Color? textColor,
    Color? backgroundColor,
    EdgeInsetsGeometry? margin,
    String? iconPosition,
    Widget? icon,
  }) {
    return Container(
      margin: margin,
      child: Material(
        borderRadius: ButtonDecoration.radiusGeometryFill,
        color: ButtonDecoration.color(color: backgroundColor ?? Colors.blue, enabled: enabled),
        child: InkWell(
          borderRadius: ButtonDecoration.radiusFill,
          onTap: enabled == false || isLoading == true ? null : onPressed,
          child: ButtonDecoration.decorationFill(
            width: width,
            isLoading: isLoading,
            iconPosition: iconPosition,
            title: title,
            textColor: textColor,
            icon: icon,
          ),
        ),
      ),
    );
  }
}

class ButtonDecoration {
  static BorderRadiusGeometry radiusGeometryFill = BorderRadius.circular(SizeValue.size4);
  static BorderRadius radiusFill = BorderRadius.circular(SizeValue.size4);

  static Color color({
    bool? enabled,
    required Color color,
  }) {
    return enabled == true ? color : color.withOpacity(0.48);
  }

  static Widget decorationFill({
    double? width,
    bool isLoading = false,
    String? iconPosition = '',
    String? title,
    Color? textColor,
    Widget? icon,
  }) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 48,
      padding: EdgeInsets.symmetric(vertical: SizeValue.size6, horizontal: SizeValue.size10),
      decoration: BoxDecoration(
        borderRadius: radiusGeometryFill,
      ),
      child: isLoading ? const SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            color: Colors.white70,
            strokeWidth: 3,
          )
      ) : Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(iconPosition == 'left') Container(
            margin: EdgeInsets.only(right: SizeValue.size4),
            child: icon,
          ),
          BodyText.small(
            text: title ?? '',
            color: textColor ?? Colors.white,
            weight: FontWeight.bold
          ),
          if(iconPosition == 'right') Container(
            margin: EdgeInsets.only(left: SizeValue.size4),
            child: icon,
          ),
        ],
      ),
    );
  }
}