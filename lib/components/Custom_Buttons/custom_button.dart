import 'package:borrow4less/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    required this.onpressed,
    required this.buttonlabel,
    this.fontsize,
    this.buttonheight,
    this.buttoncurve,
    this.buttoncolor,
    this.textcolor,
    this.bordersidecolor,
    this.verticalPadding,
    Key? key,
    this.horizontalPadding,
  }) : super(key: key);

  final Function() onpressed;
  final String buttonlabel;
  final double? fontsize;
  final double? buttonheight;
  final double? buttoncurve;
  final Color? buttoncolor;
  final Color? bordersidecolor;
  final Color? textcolor;
  final double? verticalPadding;
  final double? horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 15,
          horizontal: horizontalPadding ?? 0,
        ),
        backgroundColor: buttoncolor ?? GlobalVariables.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttoncurve ?? 5),
          side: BorderSide(

            color: bordersidecolor ?? GlobalVariables.primaryColor,
          ),
        ),
      ),
      child: Center(
        child: Text(
          buttonlabel,
          style: GlobalVariables.buttonTextStyle.copyWith(
            color: textcolor,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
