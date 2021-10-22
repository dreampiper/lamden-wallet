import 'package:flutter/material.dart';

import '../utils/constants.dart';

class HeroBg extends StatelessWidget {
  const HeroBg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // use position to arrange get the desired mockup look
        Image.asset(
          heroBg,
          height: 560,
          fit: BoxFit.cover,
        ),
        Container(
          height: 370,
          decoration: BoxDecoration(
            gradient: homeBgGradient,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 210,
            color: kBlack,
          ),
        )
      ],
    );
  }
}
