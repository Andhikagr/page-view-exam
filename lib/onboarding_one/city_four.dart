import 'package:flutter/material.dart';

class CityFour extends StatelessWidget {
  const CityFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/city-4.png"),
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 3),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your Title Goes ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.25,
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Here!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.25,
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta ipsumLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta ipsum",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.25,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        icon: Icon(Icons.arrow_right_alt),
                        onPressed: () {},
                        label: Text("Get Started"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
