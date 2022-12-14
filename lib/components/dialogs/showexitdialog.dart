import 'dart:io';
import 'package:borrow4less/components/Custom_Buttons/customtext_button.dart';
import 'package:borrow4less/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool> showExitPopup({
  required BuildContext context,
  required String exitTitle,
  required String exitMessage,
  required Function() exitFunction,
}) async {
  if (Platform.isIOS) {
    return await showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              exitTitle,
              style: GlobalVariables.header1,
            ),
            content: Text(
              exitMessage,
              style: GlobalVariables.paragraph1,
            ),
            actions: [
              CustomTextButton(
                alignGeometry: Alignment.center,
                sizedimensionwidth: 100,
                onTap: () {
                  Navigator.of(context).pop(false);
                },
                buttontext: 'No',
              ),
              CustomTextButton(
                alignGeometry: Alignment.center,
                sizedimensionwidth: 100,
                onTap: () {
                  exitFunction;
                },
                buttontext: 'Yes',
              ),
            ],
          );
        });
  } else {
    return await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              exitTitle,
              style: GlobalVariables.header1,
            ),
            content: Text(
              exitMessage,
              style: GlobalVariables.paragraph1,
            ),
            actions: [
              CustomTextButton(
                alignGeometry: Alignment.center,
                onTap: () {
                  Navigator.of(context).pop(false);
                },
                buttontext: 'No',
              ),
              CustomTextButton(
                alignGeometry: Alignment.center,
                onTap: exitFunction,
                buttontext: 'Yes',
              ),
            ],
          );
        });
  }
}
