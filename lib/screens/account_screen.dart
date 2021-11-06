import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lamden/models/screen_args_model.dart';
import 'package:lamden/widgets/hero_bg.dart';

import '../utils/constants.dart';
import '../widgets/account_actions.dart';
import '../widgets/account_detail.dart';
import '../widgets/account_sheet.dart';

class AccountScreen extends HookWidget {
  final String name1 = "Elyn Account";
  final String name2 = "Lamden Paint";
  final String name3 = "Rocket Swap";
  final double balance = 0;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArgs;
    final pageController = usePageController(initialPage: args.index);

    return Scaffold(
      backgroundColor: kBlack,
      body: Stack(
        children: [
          HeroBg(),
          SafeArea(
            child: PageView(
              controller: pageController,
              children: [
                AccountDetail(name: name1, balance: balance),
                AccountDetail(name: name2, balance: balance),
                AccountDetail(name: name3, balance: balance),
              ],
            ),
          ),
          AccountActions(),
          AccountDetailSheet()
        ],
      ),
    );
  }
}
