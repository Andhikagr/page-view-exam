import 'package:flutter/material.dart';
import 'package:onboarding_exam/onboarding_one/onboarding.dart';
import 'package:onboarding_exam/onboarding_two/onboarding_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Onboarding());
      home: OnboardingChat(),
    );
  }
}
