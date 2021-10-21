import 'package:flutter/material.dart';

import '../utils/constants.dart';

class HeroBg extends StatelessWidget {
  const HeroBg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          heroBg,
          height: 560,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                gradient: homeBgGradient,
              ),
            ),
            Container(
              height: 160,
              color: kBlack,
            )
          ],
        )
      ],
    );
  }
}
