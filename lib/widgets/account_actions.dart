import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/constants.dart';
import 'package:flutter/services.dart';

class AccountActions extends StatelessWidget {
  final Widget copySvg =
      SvgPicture.asset(copyAsset, semanticsLabel: 'Copy Address');
  final Widget sendSvg = SvgPicture.asset(sendAsset, semanticsLabel: 'Send Tx');

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 238,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: kPaddingL),
        child: Row(
          children: [
            Row(
              children: [
                sendSvg,
                Text(
                  'SEND TX',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: kSpaceXL,
            ),
            GestureDetector(
              onTap: () {
                Clipboard.setData(
                  ClipboardData(text: "Your Copy text"),
                ).then(
                  // TODO: Should turn to a floating fading "Copied!" when tapped.
                  (_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Container(
                          height: 30,
                          child: Center(
                            child: Text('Copied!'),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  copySvg,
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'COPY ADDRESS',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
