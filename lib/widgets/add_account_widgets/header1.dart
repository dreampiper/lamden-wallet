import 'package:flutter/material.dart';
import 'package:lamden/utils/constants.dart';

class AddAccountHeader1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            child: Text(
              "Add Account",
              style: TextStyle(
                color: kWhite,
                fontSize: 37.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FittedBox(
            child: Text(
              "Add Existing or Create New.",
              maxLines: 1,
              style: TextStyle(
                color: kWhite,
                fontSize: 26.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
