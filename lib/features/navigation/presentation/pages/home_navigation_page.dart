import 'package:flutter/material.dart';

class HomeNavigationPage extends StatelessWidget {
  const HomeNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        
      },
      child: Scaffold(
        backgroundColor: Colors.white,
      ),
    );
  }
}