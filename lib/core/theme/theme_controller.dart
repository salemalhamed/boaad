import 'package:boaad/core/theme/app_colors/app_colors_light.dart';
import 'package:boaad/core/theme/theme_data/theme_data_light.dart';
import 'package:flutter/material.dart';

class ThemeController {
  ThemeData get theme => themeDataLight;

  LinearGradient get themeGradient => AppColorsLight.lightGradient;
}
