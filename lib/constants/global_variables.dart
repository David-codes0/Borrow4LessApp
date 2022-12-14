import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalVariables {
  // Company's Name
  static const String companyName = 'Virtual Mentor';

  // Color
  static const scaffoldBackgroundcolor = Color.fromARGB(255, 255, 255, 255);
  static const primaryColor = Color(0xff0066F6);
  static const lightBlue = Color(0xff5694f2);
  static const textColor = Color(0xff001533);
  static const greyColor = Color(0xffa1a1a1);
  static const redColor = Color(0xffC21C1C);
  // TextStyle

  static TextStyle header1 = const TextStyle(
    fontFamily: 'Agatho',
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static TextStyle paragraph1 = GoogleFonts.karla(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: primaryColor,
  );

  static TextStyle buttonTextStyle = GoogleFonts.karla(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
