import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../utils/constants.dart';
import '../widgets/account_actions.dart';
import '../widgets/account_detail.dart';
import '../widgets/account_sheet.dart';

class AccountScreen extends HookWidget {
  final String name = "Elyn Account";
  final double balance = 0;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlack,
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              children: [
                AccountDetail(name: name, balance: balance),
                AccountDetail(name: name, balance: balance),
                AccountDetail(name: name, balance: balance),
                AccountDetail(name: name, balance: balance),
              ],
            ),
            AccountActions(),
            AccountDetailSheet()
          ],
        ),
      ),
    );
  }
}
