import 'package:boaad/core/views/screens/FirstScreen.dart';
import 'package:boaad/core/views/screens/SplashScreen.dart';
import 'package:boaad/core/views/screens/actScreens/EndAudoiTest.dart';
import 'package:boaad/core/views/screens/actScreens/LoginScreen.dart';
import 'package:boaad/core/views/screens/actScreens/ResultScreen.dart';
import 'package:boaad/core/views/screens/actScreens/angerTest.dart';
import 'package:boaad/core/views/screens/actScreens/chatbot.dart';
import 'package:boaad/core/views/screens/actScreens/homeScreen.dart';
import 'package:boaad/core/views/screens/actScreens/joyScreen.dart';
import 'package:boaad/core/views/screens/actScreens/sadScreen.dart';
import 'package:boaad/core/views/screens/actScreens/testScreen.dart';
import 'package:boaad/core/views/screens/actScreens/VideoTest.dart';
import 'package:boaad/core/views/screens/actScreens/testplanScreen.dart';
import 'package:boaad/features/splash/view/screens/splash_screen.dart';
import 'package:boaad/features/unknown_screen/view/screens/unknown_route_screen.dart';
import 'package:boaad/features/welcome/view/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String actlogSscreen = "/actlog";
  static const String testSscren = "/test";
  static const String AngertestScren = "/angertest";
  static const String JoyScreenc = "/joytest";
  static const String sadScreenc = "/EndTestScren";
  static const String EndScreenc = "/sadtest";
  static const String videoScreenc = "/videotest";
  static const String ResultScreenn = "/ResultScreen";
  static const String HomePagep = "/HomePage";
  static const String TrainingScreenn = "/TrainPscreen";
  static const String ChatScreenn = "/ChatScren";
  static const String unknownRouteScreen = UnknownRouteScreen.routeName;

  static List<GetPage> getPages = [
    GetPage(name: SplashScreen.routeName, page: () => SplashScreen()),
    GetPage(name: WelcomeScreen.routeName, page: () => WelcomeScreen()),
  ];

  static GetPage unknownScreenGetPage = GetPage(
    name: unknownRouteScreen,
    page: () => UnknownRouteScreen(),
  );

  static Route<dynamic> generatesRoutes(RouteSettings settings) {
    switch (settings.name) {
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
      case "/test":
        return MaterialPageRoute(
          builder: (context) => TestScreen(),
        );
      case "/angertest":
        return MaterialPageRoute(
          builder: (context) => AngertestScreen(),
        );
      case "/joytest":
        return MaterialPageRoute(
          builder: (context) => JoyScreen(),
        );
      case "/sadtest":
        return MaterialPageRoute(
          builder: (context) => sadScreen(),
        );
      case "/EndTestScren":
        return MaterialPageRoute(
          builder: (context) => EndTestScreen(),
        );
      case "/videotest":
        return MaterialPageRoute(
          builder: (context) => videoScreen(),
        );
      case "/ResultScreen":
        return MaterialPageRoute(
          builder: (context) => ResultScreen(),
        );
      case "/HomePage":
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case "/TrainPscreen":
        return MaterialPageRoute(
          builder: (context) => TrainingScreen(),
        );
      case "/ChatScren":
        return MaterialPageRoute(
          builder: (context) => ChatbotScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => SplashScreenss(),
        );
    }
  }
}
