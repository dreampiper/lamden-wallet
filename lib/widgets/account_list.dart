import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lamden/models/account_model.dart';
import 'package:lamden/utils/constants.dart';

import 'account_tile.dart';

class AccountList extends StatelessWidget {
  const AccountList({Key? key, required this.accounts}) : super(key: key);

  final List<AccountModel> accounts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: kPaddingL,
              bottom: kPaddingBottom,
            ),
            child: Text(
              "Accounts",
              style: TextStyle(
                color: kBlueGrey200,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverFixedExtentList(
                  itemExtent: 100,
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: kPaddingM,
                          right: kPaddingM,
                          bottom: kPaddingBottom,
                        ),
                        child: AccountTile(
                          icon: accounts[index].icon!,
                          accountName: accounts[index].accountName!,
                          nickname: accounts[index].nickname!,
                          accountBalance: accounts[index].accountBalance!,
                          publicKey: accounts[index].publicKey!,
                        ),
                      );
                    },
                    childCount: accounts.length,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

getRandomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}
