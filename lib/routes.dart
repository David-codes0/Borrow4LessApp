
import 'package:flutter/material.dart';

import 'screens/BorrowerOrLender/borrowerOrLenderScreen.dart';

Route<RouteSettings> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    
    case BorrowerOrLenderScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const BorrowerOrLenderScreen(),
      );
    // case ChooseScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const ChooseScreen(),
    //   );
    // case DetailScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const DetailScreen(),
    //   );

    // case EmailVerificationScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const EmailVerificationScreen(),
    //   );
    // case LoginScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const LoginScreen(),
    //   );
    // case MentorNavigationScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const MentorNavigationScreen(),
    //   );
    // case MessageScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const MessageScreen(),
    //   );

    // case NavigationScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const NavigationScreen(),
    //   );
    // case NotificationScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const NotificationScreen(),
    //   );

    // case NewPassowordScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const NewPassowordScreen(),
    //   );
    // case ListSpecialistScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const ListSpecialistScreen(),
    //   );
    // case OnBoardingScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const OnBoardingScreen(),
    //   );
    // case OnBoardingScreen2.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const OnBoardingScreen2(),
    //   );
    // case PasswordReSetScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const PasswordReSetScreen(),
    //   );

    // case PasswordResetScreen2.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const PasswordResetScreen2(),
    //   );

    // case ScheduleBookingScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const ScheduleBookingScreen(),
    //   );
    // case SignUpScreen.routName:
    //   return MaterialPageRoute(
    //     builder: (_) => const SignUpScreen(),
    //   );
    // case TakePhotoScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const TakePhotoScreen(),
    //   );
    // case UploadaPhotoScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const UploadaPhotoScreen(),
    //   );
    // case VerifyMentorIdentityScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const VerifyMentorIdentityScreen(),
    //   );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(child: Text('Unknown route')),
        ),
      );
  }
}
