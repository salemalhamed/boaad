import 'package:flutter/material.dart';

import '../app_colors/app_colors_light.dart';

ThemeData get themeDataLight => ThemeData(
      fontFamily: 'Tajawal',
      primaryColor: AppColorsLight.primaryColor,
      appBarTheme: AppBarTheme(
        foregroundColor: AppColorsLight.secondaryColor,
      ),
      colorScheme: ColorScheme.light(
        primary: AppColorsLight.primaryColor,
        secondary: AppColorsLight.secondaryColor,
      ),
      scaffoldBackgroundColor: AppColorsLight.primaryColor,
    );
