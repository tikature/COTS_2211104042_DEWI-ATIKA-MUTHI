import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/onboarding/view/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Onboarding App',
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
