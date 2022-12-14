import 'package:borrow4less/constants/global_variables.dart';
import 'package:flutter/material.dart';


showErrorSheet({required BuildContext context, required String errorMessage}) {
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 150.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              "Oops !!!",
              style: GlobalVariables.paragraph1.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: GlobalVariables.screenWidth(context) - 40,
              child: Text(errorMessage,
                  textAlign: TextAlign.center,
                  style: GlobalVariables.paragraph1.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: GlobalVariables.primaryColor.withOpacity(0.5))),
            ),
          ],
        ),
      );
    },
  );
}
