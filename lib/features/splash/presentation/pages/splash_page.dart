import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:physiomobile_test/core/presentation/assets/assets.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';
import 'package:physiomobile_test/features/splash/application/splash_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  final SplashController _splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Material(
      type: MaterialType.transparency,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(BackgroundAssets.bgSplash)
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            GetBuilder<SplashController>(
              init: _splashController,
              builder: (_) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageAssets.mainLogo,
                      scale: 1.4,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * .25, vertical: screenWidth * .01),
                      child: LinearProgressIndicator(
                        color: Colors.deepOrange,
                        minHeight: 5,
                        borderRadius: BorderRadius.circular(SizeValue.size1),
                      ),
                    )
                  ],
                );
              },
            ),
            Column(
              children: [
                BodyText.extraSmall(
                  text: "Physiomobile",
                  color: Colors.white
                ),
                BodyText.extraSmall(
                  text: "Version 1.0.0",
                  color: Colors.white,
                  margin: EdgeInsets.only(bottom: SizeValue.size10)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}