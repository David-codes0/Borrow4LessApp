import 'package:borrow4less/constants/global_variables.dart';
import 'package:flutter/material.dart';


class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.5),
      width: GlobalVariables.screenWidth(context),
      height: GlobalVariables.screenHeight(context),
      child: const Center(
        child: CircularProgressIndicator(
          color: GlobalVariables.primaryColor,
        ),
      ),
    );
  }
}
