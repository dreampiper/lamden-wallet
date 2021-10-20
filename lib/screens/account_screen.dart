import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lamden/widgets/account_actions.dart';
import 'package:lamden/widgets/account_sheet.dart';

class AccountScreen extends HookWidget {
  final pageController = usePageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              // PageViewHeader(),
              // PageViewHeader(),
              // PageViewHeader(),
            ],
          ),
          AccountActions(),
          AccountDetailSheet()
        ],
      ),
    );
  }
}
