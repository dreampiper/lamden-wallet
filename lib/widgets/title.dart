import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';

class Title extends StatelessWidget {
  const Title({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: kWhite,
          fontWeight: FontWeight.w400,
          fontSize: 32
        ),
      ),
    );
  }
}
