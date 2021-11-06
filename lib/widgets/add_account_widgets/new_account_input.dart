import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lamden/utils/constants.dart';

class NewAccountInput extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textEditController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        onChanged: () {
          final nickname = textEditController.text.trim();
        },
        child: TextFormField(
          controller: textEditController,
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
        ),
      ),
    );
  }
}
