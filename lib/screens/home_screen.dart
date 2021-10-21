import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/widgets/hero_bg.dart';

import '../widgets/account_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String name = "Wallet Total";
  final double balance = 9.96;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlack,
        body: Stack(
          children: [
            HeroBg(),
            Column(
              children: [
                AccountDetail(name: name, balance: balance,),
                // TaskSheet(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
