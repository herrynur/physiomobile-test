import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:physiomobile_test/core/presentation/utilities/sizing.dart';
import 'package:physiomobile_test/core/presentation/utilities/typography.dart';
import 'package:physiomobile_test/features/counter/application/counter_controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: GetBuilder<CounterController>(
            builder: (controller) {
              return BodyText.medium(
                text: controller.counter.toString(),
                weight: FontWeight.bold
              );  
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(left: SizeValue.size10),
          child: Row(
            children: [
              Container(
                width: screenHeight * .08,
                height: screenHeight * .08,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange
                ),
                child: IconButton(
                  icon: BodyText.medium(
                    text: "-",
                    color: Colors.white,
          
                  ),
                  onPressed: () =>  _counterController.counterDown(),
                ),
              ),
              SizedBox(width: SizeValue.size4),
              Container(
                width: screenHeight * .08,
                height: screenHeight * .08,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                child: IconButton(
                  icon: BodyText.medium(
                    text: "+",
                    color: Colors.white,
                  ),
                  onPressed: () =>  _counterController.counterUp(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}