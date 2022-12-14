import 'package:borrow4less/constants/global_variables.dart';
import 'package:borrow4less/core/statemanagementclass.dart';
import 'package:borrow4less/routes.dart';
import 'package:borrow4less/screens/onboarding/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (oversroll) {
        oversroll.disallowIndicator();
        return true;
      },
      child: StateManagementClass(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: GlobalVariables.companyName,
          theme: ThemeData(
            canvasColor: Colors.transparent,
            appBarTheme:
                const AppBarTheme(color: Colors.transparent, elevation: 0),
            scaffoldBackgroundColor: GlobalVariables.scaffoldBackgroundcolor,
            colorScheme: const ColorScheme.light(
              primary: GlobalVariables.primaryColor,
            ),
          ),
          home: const OnboardingPage(),
          onGenerateRoute: (settings) => generateRoute(settings),
        ),
      ),
    );
  }
}
