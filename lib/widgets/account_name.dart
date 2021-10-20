import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AccountName extends StatelessWidget {
  const AccountName({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        name,
        style: TextStyle(
          color: kWhite,
          fontWeight: FontWeight.w400,
          fontSize: 32,
        ),
      ),
    );
  }
}
