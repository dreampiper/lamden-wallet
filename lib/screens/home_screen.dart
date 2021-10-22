import 'package:flutter/material.dart';
import 'package:lamden/models/account_model.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/widgets/account_list.dart';
import 'package:lamden/widgets/hero_bg.dart';

import '../widgets/account_detail.dart';

class HomeScreen extends StatelessWidget {
  final String name = "Wallet Total";
  final double balance = 9;
  final List<AccountModel> accounts = [
    AccountModel(
      nickname: "Elyn Account",
      accountName: "Lamden Paint",
      accountBalance: 0,
      icon: "",
      publicKey: "",
      privateKey: "",
    ),
    AccountModel(
      nickname: 'Lamden Paint',
      accountName: 'Lamden Paint',
      accountBalance: 0,
      icon: "",
      publicKey: "",
      privateKey: "",
    ),
    AccountModel(
      nickname: "Rocketswap",
      accountName: "Rocketswap",
      accountBalance: 0,
      icon: "",
      publicKey: "",
      privateKey: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlack,
        body: Stack(
          children: [
            HeroBg(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AccountDetail(name: name, balance: balance),
                SizedBox(height: kSpaceS),
                AccountList(accounts: accounts),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
