import 'package:flutter/material.dart';

class CityTwo extends StatelessWidget {
  const CityTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 40, right: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    "Your Long Title Goes Here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.25,
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),

                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta ipsumLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta ipsum",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -250,
            left: 0,
            right: 0,
            child: Image.asset("assets/city-2.png", scale: 1.8),
          ),
        ],
      ),
    );
  }
}
