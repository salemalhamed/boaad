import 'package:boaad/core/common/controller/city_controller.dart';
import 'package:boaad/core/common/controller/country_controller.dart';
import 'package:boaad/core/common/controller/gender_controller.dart';
import 'package:boaad/core/common/controller/media_controller.dart';
import 'package:boaad/core/common/controller/role_controller.dart';
import 'package:boaad/core/common/controller/supported_country_controller.dart';
import 'package:boaad/core/routes/app_routes.dart';
import 'package:boaad/core/theme/theme_controller.dart';
import 'package:boaad/features/application/logic/application_controller.dart';
import 'package:boaad/features/auth/controller/auth_controller.dart';
import 'package:boaad/features/opportunity/controller/opportunity_controller.dart';
import 'package:boaad/features/splash/view/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(AuthController());
  Get.put(SupportedCountryController()).fetchCountries();
  Get.put(CountryController()).fetchCountries();
  Get.put(CityController()).fetchCities();
  Get.put(RoleController()).fetchRoles();
  Get.put(GenderController()).fetchGenders();
  Get.put(MediaController());
  Get.put(OpportunityController()).fetchOpportunities();
  Get.put(ApplicationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: DevicePreview.appBuilder,
      theme: ThemeController().theme,
      debugShowCheckedModeBanner: false,
      unknownRoute: AppRoutes.unknownScreenGetPage,
      initialRoute: SplashScreen.routeName,
      getPages: AppRoutes.getPages,
      locale: Locale('ar', 'SA'),
    );
  }
}
