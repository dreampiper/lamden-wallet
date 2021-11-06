import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamden/utils/constants.dart';

class LogoText extends StatelessWidget {
  final Widget lamdenSvg =
      SvgPicture.asset(lamdenAsset, semanticsLabel: 'Lamden Logo');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          lamdenSvg,
          SizedBox(
            width: 8,
          ),
          Text(
            "Lamden",
            style: TextStyle(
              color: kWhite,
              fontSize: 37.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
