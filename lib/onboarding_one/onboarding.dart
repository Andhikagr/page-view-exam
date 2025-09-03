import 'package:flutter/material.dart';
import 'package:onboarding_exam/onboarding_one/city_one.dart';
import 'package:onboarding_exam/onboarding_one/city_three.dart';
import 'package:onboarding_exam/onboarding_one/city_two.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [CityOne(), CityTwo(), CityThree()],
      ),
    );
  }
}
