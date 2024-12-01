import 'package:boaad/core/views/screens/FirstScreen.dart';
import 'package:boaad/core/views/screens/SplashScreen.dart';
import 'package:boaad/core/views/screens/actScreens/LoginScreen.dart';
import 'package:boaad/core/views/screens/actScreens/angerTest.dart';
import 'package:boaad/core/views/screens/actScreens/testScreen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  //  تسوي هاندل لكل الملفات اعامل كل صفحة على اساس انها رابط
  static const String splashScreen = "/";
  static const String FirstSscreen = "/first";
  static const String actlogSscreen = "/actlog";
  static const String testSscren = "/test";
  static const String AngertestScren = "/angertest";

  static Route<dynamic> generteRouts(RouteSettings Rsettings) {
    switch (Rsettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case "/first":
        return MaterialPageRoute(
          builder: (context) => FirstScreen(),
        );
      case "/actlog":
        return MaterialPageRoute(
          builder: (context) => ActLoginScreen(),
        );
      case "/tset":
        return MaterialPageRoute(
          builder: (context) => TestScreen(),
        );
      case "/angertest":
        return MaterialPageRoute(
          builder: (context) => AngertestScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
    }
  }
}
