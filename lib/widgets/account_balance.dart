import 'package:flutter/material.dart';
import 'package:lamden/utils/numbers.dart';
import 'package:lamden/widgets/converted_tau.dart';

import '../utils/constants.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({Key? key, required this.balance}) : super(key: key);

  final double balance;

  bool x() => NumberUtils.stringify(balance).length < 2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:
          x() ? AlignmentDirectional.topCenter : AlignmentDirectional.topStart,
      children: [
        Text(
          "TAU",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
        Column(
          crossAxisAlignment:
              x() ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18),
            TauBalance(balance: balance),
            ConvertedTau(balance: balance)
          ],
        )
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
      NumberUtils.stringify(balance),
      style: TextStyle(
        color: kWhite,
        fontWeight: FontWeight.w400,
        fontSize: 96,
      ),
    );
  }
}
