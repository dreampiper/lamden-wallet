import 'package:flutter/material.dart';
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
    return Column(
      children: [
        AccountName(name: name),
        AccountBalance(balance: balance),
      ],
    );
  }
}
