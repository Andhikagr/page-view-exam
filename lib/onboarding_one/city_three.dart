import 'package:flutter/material.dart';

class CityThree extends StatelessWidget {
  const CityThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [Image.asset("assets/city-3.png", fit: BoxFit.cover)],
      ),
    );
  }
}
