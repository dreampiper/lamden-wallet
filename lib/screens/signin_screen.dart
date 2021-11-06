import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/widgets/logo_text.dart';
import 'package:lamden/widgets/signin_widgets/header.dart';
import 'package:lamden/widgets/signin_widgets/password_input.dart';
import 'package:lamden/widgets/button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kSpaceL),
            LogoText(),
            SizedBox(height: kSpaceXL),
            SigninHeader(),
            SizedBox(
              height: kSpaceXL,
            ),
            Column(
              children: [
                PasswordInput(),
                SizedBox(height: kSpaceT),
                Button(label: "LOGIN", callback: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
