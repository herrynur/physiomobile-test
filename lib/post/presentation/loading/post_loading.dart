import 'package:flutter/material.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:shimmer/shimmer.dart';

class PostLoading {
  static Widget postLoading() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeValue.size4, horizontal: SizeValue.size10),
      child: ListView(
        padding: EdgeInsets.only(bottom: SizeValue.size8),
        children: [1,2,3,4,5,6,7,8].map((e) => Padding(
          padding: EdgeInsets.only(bottom: SizeValue.size8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  enabled: true,
                  baseColor: Colors.grey.shade100,
                  highlightColor: Colors.grey.shade300,
                  child: Container(
                    width: 150,
                    height: 12,
                    margin: const EdgeInsets.only(right: 6, bottom: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  enabled: true,
                  baseColor: Colors.grey.shade200,
                  highlightColor: Colors.grey.shade300,
                  child: Container(
                    width: double.infinity,
                    height: 14,
                    margin: const EdgeInsets.only(right: 6, bottom: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  enabled: true,
                  baseColor: Colors.grey.shade200,
                  highlightColor: Colors.grey.shade300,
                  child: Container(
                    width: double.infinity,
                    height: 14,
                    margin: const EdgeInsets.only(right: 6,  bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  enabled: true,
                  baseColor: Colors.grey.shade200,
                  highlightColor: Colors.grey.shade300,
                  child: Container(
                    width: double.infinity,
                    height: 14,
                    margin: const EdgeInsets.only(right: 6,  bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                ),
              ],
            ),
        ),
        ).toList()
      ),
    );
  }
}