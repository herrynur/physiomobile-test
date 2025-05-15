import 'package:flutter/material.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';

class HomeNavigationChildWidget extends StatelessWidget {
  const HomeNavigationChildWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected
  });

  final String title;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.blue[500] : Colors.black,
        ),
        BodyText.extraSmall(
          margin: EdgeInsets.only(top: SizeValue.size2),
          text: title,
          color: isSelected ? Colors.blue[500] : Colors.black,
          weight: isSelected ? FontWeight.bold : FontWeight.w500
        )
      ],
    );
  }
}