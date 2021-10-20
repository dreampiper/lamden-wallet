import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({
    Key? key,
    required this.fontSize,
    required this.topMargin,
  }) : super(key: key);

  final double fontSize;
  final double topMargin;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topMargin,
      child: Text(
        'Tokens',
        style: TextStyle(
          color: kBlueGrey200,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
