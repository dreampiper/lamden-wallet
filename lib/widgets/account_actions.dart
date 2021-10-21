import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/constants.dart';

class AccountActions extends StatelessWidget {
  final Widget copySvg =
      SvgPicture.asset(copyAsset, semanticsLabel: 'Copy Address');
  final Widget sendSvg = SvgPicture.asset(sendAsset, semanticsLabel: 'Send Tx');

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sendSvg,
        copySvg,
      ],
    );
  }
}
