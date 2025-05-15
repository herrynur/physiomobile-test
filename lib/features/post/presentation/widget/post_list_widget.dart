import 'package:flutter/material.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';

class PostListWidget extends StatelessWidget {
  const PostListWidget({
    super.key,
    required this.id,
    required this.userId,
    required this.title,
    required this.body
  });

  final int id;
  final int userId;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: SizeValue.size4, horizontal: SizeValue.size10),
      margin: EdgeInsets.only(bottom: SizeValue.size4),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.4,
          color: Colors.grey[200]!
        ),
        borderRadius: BorderRadius.circular(SizeValue.size4)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BodyText.small(
            text: title,
            weight: FontWeight.bold
          ),
          BodyText.extraSmall(
            text: body,
            textAlign: TextAlign.justify
          )
        ],
      ),
    );
  }
}