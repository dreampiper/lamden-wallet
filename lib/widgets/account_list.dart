import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/account_model.dart';
import '../utils/constants.dart';
import 'account_tile.dart';

class AccountList extends StatelessWidget {
  AccountList({Key? key, required this.accounts}) : super(key: key);

  final List<AccountModel> accounts;

  final Widget plusSvg = SvgPicture.asset(plusAsset, semanticsLabel: 'Send Tx');
  final Widget lamdenSvg =
      SvgPicture.asset(lamdenAsset, semanticsLabel: 'Send Tx');
  final Widget lamdenLinkedSvg =
      SvgPicture.asset(lamdenLinkedAsset, semanticsLabel: 'Send Tx');

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
              'Accounts',
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
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: kPaddingM,
                          right: kPaddingM,
                          bottom: kPaddingBottom,
                        ),
                        child: AccountTile(
                          icon: Center(child: plusSvg),
                          accountName: 'Create New Account',
                        ),
                      ),
                    ],
                  ),
                ),
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
                          icon: getIcon(
                            icon: accounts[index].icon!,
                            linked: accounts[index].linkedAccount!,
                          ),
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

  getIcon({required String icon, required bool linked}) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 48.0,
          minWidth: 48.0,
          maxHeight: 48.0,
          maxWidth: 48.0,
        ),
        child: (() {
          if (linked) {
            if (icon.isNotEmpty) {
              return Text("Icn");
            } else {
              return lamdenLinkedSvg;
            }
          } else {
            return lamdenSvg;
          }
        }()),
      ),
    );
  }
}
