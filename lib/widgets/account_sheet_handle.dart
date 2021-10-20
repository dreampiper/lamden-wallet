import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';

class SheetHandle extends StatelessWidget {
  const SheetHandle({Key? key, this.topMargin}) : super(key: key);

  final double? topMargin;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topMargin,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: kBlueGrey200,
            borderRadius: const BorderRadius.all(
              Radius.circular(kRadiusS),
            ),
          ),
          height: 9,
          width: 62,
        ),
      ),
    );
  }
}
