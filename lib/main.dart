import 'package:boaad/core/constant/app_routes.dart';
import 'package:boaad/features/splash/view/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        fontFamily: 'Cairo',
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      unknownRoute: AppRoutes.unknownScreenGetPage,
      initialRoute: SplashScreen.routeName,
      getPages: AppRoutes.getPages,
    );
  }
}
