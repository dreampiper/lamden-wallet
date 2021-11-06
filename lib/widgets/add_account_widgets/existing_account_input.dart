import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lamden/utils/constants.dart';

class ExistingAccountInput extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final privateKeytextEditController = useTextEditingController();
    final nicknameEditController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        onChanged: () {
          final privateKey = privateKeytextEditController.text.trim();
          final nickname = nicknameEditController.text.trim();
          print(privateKey);
          print(nickname);
        },
        child: Column(
          children: [
            TextFormField(
              controller: privateKeytextEditController,
              textInputAction: TextInputAction.done,
              style: TextStyle(
                fontSize: 25,
                color: kWhite,
              ),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 19,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: kWhite,
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: kWhite,
                    width: 2.0,
                  ),
                ),
                hintText: 'Private Key',
                hintStyle: TextStyle(
                  fontSize: 25,
                  color: kWhite.withOpacity(0.5),
                ),
                labelText: 'Enter Private Key',
                labelStyle: TextStyle(fontSize: 20, color: kWhite),
              ),
            ),
            SizedBox(height: kSpaceT),
            TextFormField(
              controller: nicknameEditController,
              textInputAction: TextInputAction.done,
              style: TextStyle(
                fontSize: 25,
                color: kWhite,
              ),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 19,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: kWhite,
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: kWhite,
                    width: 2.0,
                  ),
                ),
                hintText: 'Account Nickname',
                hintStyle: TextStyle(
                  fontSize: 25,
                  color: kWhite.withOpacity(0.5),
                ),
                labelText: 'Account Nickname (Optional)',
                labelStyle: TextStyle(fontSize: 20, color: kWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}
