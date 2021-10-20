import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            // controller: pageController,
            children: [
              // Wards(),
              // Wards(),
              // Wards(),
            ],
          ),
          // PageViewHeader(),
          // TaskSheet(),
        ],
      ),
    );
  }
}
