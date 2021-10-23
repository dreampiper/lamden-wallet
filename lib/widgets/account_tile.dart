import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/utils/numbers.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    Key? key,
    this.icon,
    this.accountName,
    this.nickname,
    this.accountBalance,
    this.publicKey,
  }) : super(key: key);

  final Widget? icon;
  final String? accountName;
  final String? nickname;
  final double? accountBalance;
  final String? publicKey;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                hasNickname(nickname) ? nickname! : accountName!,
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
                    Text(
                      NumberUtils.stringify(accountBalance!) + " TAU",
                      style: TextStyle(
                        color: kBlueGrey100,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "0.0%",
                      style: TextStyle(
                        color: kBlueGrey100,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ]
            ],
          ),
        ],
      ),
    );
  }

  bool hasNickname(String? nickname) =>
      nickname != null ? nickname.isNotEmpty : false;
}
