import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/widgets/account_balance.dart';
import 'package:lamden/widgets/account_name.dart';

class AccountDetail extends StatelessWidget {
  const AccountDetail({
    Key? key,
    required this.name,
    required this.balance,
  }) : super(key: key);

  final String name;
  final double balance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kPaddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: kSpaceL),
          AccountName(name: name),
          SizedBox(height: kSpaceM),
          AccountBalance(balance: balance),
        ],
      ),
    );
  }
}
