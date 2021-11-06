import 'package:flutter/material.dart';
import 'package:lamden/models/screen_args_model.dart';
import 'package:lamden/routes.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/utils/numbers.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    Key? key,
    required this.index,
    required this.action,
    required this.icon,
    this.accountName,
    this.nickname,
    this.accountBalance,
    this.publicKey,
  }) : super(key: key);

  final int index;
  final String action;
  final Widget icon;
  final String? accountName;
  final String? nickname;
  final double? accountBalance;
  final String? publicKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (action == 'create account') {
        } else if (action == 'view account') {
          // set selectedAccountIndex to index
          // navigate to account pages
          Navigator.pushNamed(
            context,
            LamdenRoutes.account,
            arguments: ScreenArgs.accountScreen(index: index),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.only(right: kPaddingS),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kRadiusL),
          color: kGrey,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kPaddingS),
              child: Container(
                width: kSpaceXL,
                height: kSpaceXL,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kRadiusL),
                  color: kBlueGrey100.withOpacity(0.4),
                  boxShadow: customShadow3,
                ),
                child: icon,
              ),
            ),
            SizedBox(width: 15),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    hasNickname(nickname) ? nickname! : accountName!,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                      color: kBlueGrey200,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  if (accountBalance != null) ...[
                    SizedBox(height: 9),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            NumberUtils.stringify(accountBalance!) + " TAU",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kBlueGrey100,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Flexible(
                          child: Text(
                            "0.0%",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kBlueGrey100,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool hasNickname(String? nickname) =>
      nickname != null ? nickname.isNotEmpty : false;
}
