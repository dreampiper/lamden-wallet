import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';
import 'package:lamden/views/add_account_view/add_account_view.dart';
import 'package:lamden/views/add_account_view/add_existing.dart';
import 'package:lamden/views/add_account_view/create_new_view.dart';

class AddAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final view = "existing";
    return Scaffold(
      backgroundColor: kBlack,
      body: Builder(
        builder: (_) {
          switch (view) {
            case "home":
              return AddAccountView();
            case "new":
              return CreateNewView();
            case "existing":
              return AddExistingView();

            default:
              return AddAccountView();
          }
        },
      ),
    );
  }
}
