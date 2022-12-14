import 'package:borrow4less/constants/global_variables.dart';
import 'package:flutter/material.dart';


class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.onTap,
    required this.buttontext,
    this.sizedimensionwidth,
    this.sizedimensionheight,
    this.alignGeometry,
    this.textcolor,
    this.padding,
    this.textstyle,
    Key? key,
  }) : super(key: key);
  final String buttontext;
  final Function() onTap;
  final Color? textcolor;
  final TextStyle? textstyle;
  final double? sizedimensionheight;
  final double? sizedimensionwidth;
  final EdgeInsets? padding;
  final AlignmentGeometry? alignGeometry;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: padding ?? EdgeInsets.zero,
        minimumSize: Size(sizedimensionwidth ?? 50, sizedimensionheight ?? 30),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: alignGeometry ?? Alignment.centerLeft,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          buttontext,
          style: textstyle ??
              TextStyle(
                fontSize: 14,
                color: textcolor ?? GlobalVariables.primaryColor,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
        ),
      ),
    );
  }
}
