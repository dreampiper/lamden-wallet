import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/widgets/add_account_widgets/header2.dart';
import 'package:lamden/widgets/add_account_widgets/new_account_input.dart';
import 'package:lamden/widgets/button.dart';
import 'package:lamden/widgets/logo_text.dart';

class CreateNewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: kSpaceL),
          LogoText(),
          SizedBox(height: kSpaceXL),
          AddAccountHeader2(),
          SizedBox(
            height: kSpaceXL,
          ),
          Column(
            children: [
              NewAccountInput(),
              SizedBox(height: kSpaceT),
              Button(
                label: "SAVE",
                callback: () => print("save new"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
