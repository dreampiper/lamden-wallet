import 'package:flutter/material.dart';

import '../utils/constants.dart';

enum Currency { dollar, pound, euro }

//  NOTE:  You haven't created the currency converter
//  NOTE:  Include a spinner to show loading state or when there's no internet

class ConvertedTau extends StatelessWidget {
  const ConvertedTau({
    Key? key,
    required this.balance,
    this.currency,
  }) : super(key: key);

  final double balance;
  final Currency? currency;

  @override
  Widget build(BuildContext context) {
    switch (currency) {
      case Currency.dollar:
        return Text(
          r"$ 0.00",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        );

      case Currency.euro:
        return Text(
          r"€ 0.00",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        );

      case Currency.pound:
        return Text(
          r"£ 0.00",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        );

      default:
        return Text(
          r"$ 0.00",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        );
    }
  }
}
