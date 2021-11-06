import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/widgets/add_account_widgets/header1.dart';
import 'package:lamden/widgets/button.dart';
import 'package:lamden/widgets/logo_text.dart';

class AddAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: kSpaceL),
          LogoText(),
          SizedBox(height: kSpaceXL),
          AddAccountHeader1(),
          SizedBox(
            height: kSpaceXL,
          ),
          Column(
            children: [
              Button(
                label: "CREATE NEW",
                callback: () => print("create new"),
              ),
              SizedBox(height: kSpaceT),
              Button(
                label: "ADD EXISTING",
                callback: () => print("add existing"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
