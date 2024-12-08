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
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> getPages = [
    GetPage(name: SplashScreen.routeName, page: () => SplashScreen()),
    GetPage(name: WelcomeScreen.routeName, page: () => WelcomeScreen()),
    GetPage(name: '/test', page: () => TestScreen()),
    GetPage(name: '/actlog', page: () => ActLoginScreen()),
    GetPage(name: '/angertest', page: () => AngertestScreen()),
    GetPage(name: '/joytest', page: () => JoyScreen()),
    GetPage(name: '/sadtest', page: () => sadScreen()),
    GetPage(name: '/EndTestScren', page: () => EndTestScreen()),
    GetPage(name: '/videotest', page: () => videoScreen()),
    GetPage(name: '/ResultScreen', page: () => ResultScreen()),
    GetPage(name: '/TrainPscreen', page: () => TrainingScreen()),
    GetPage(name: '/ChatScren', page: () => ChatbotScreen()),
    GetPage(name: '/HomePage', page: () => HomePage()),
  ];

  static GetPage unknownScreenGetPage = GetPage(
    name: UnknownRouteScreen.routeName,
    page: () => UnknownRouteScreen(),
  );

  // There is no need to use generateRoutes because we will use getX getPage instead,
  // generateRoutes provide benefits when we need to use dynamic routes like websites,
  // which getX provide a high percentage of it
  // static Route<dynamic> generatesRoutes(RouteSettings settings) {
  //   switch (settings.name) {
  //     case "/HomePage":
  //       return MaterialPageRoute(
  //         builder: (context) => HomePage(),
  //       );
  //     default:
  //       return MaterialPageRoute(
  //         builder: (context) => SplashScreen(),
  //       );
  //   }
  // }
}
