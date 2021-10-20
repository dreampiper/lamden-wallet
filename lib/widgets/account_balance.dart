import 'package:flutter/material.dart';
import 'package:lamden/widgets/converted_tau.dart';

import '../utils/constants.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({Key? key, required this.balance}) : super(key: key);

  final double balance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "TAU",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
        TauBalance(balance: balance),
        ConvertedTau(balance: balance)
      ],
    );
  }
}

class TauBalance extends StatelessWidget {
  const TauBalance({Key? key, required this.balance}) : super(key: key);

  final double balance;

  @override
  Widget build(BuildContext context) {
    return Text(
      balance.toString(),
      style: TextStyle(
        color: kWhite,
        fontWeight: FontWeight.w400,
        fontSize: 96,
      ),
    );
  }
}
