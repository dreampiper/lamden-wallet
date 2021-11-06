import 'package:flutter/material.dart';

import 'package:lamden/utils/constants.dart';

class Button extends StatelessWidget {
  final String label;
  final Function callback;

  const Button({
    Key? key,
    required this.label,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        height: 66,
        width: double.infinity,
        child: TextButton(
          onPressed: () => callback(),
          child: Text(
            label,
            style: TextStyle(
              color: kWhite,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          style: TextButton.styleFrom(
            primary: kWhite,
            backgroundColor: kBlue100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
