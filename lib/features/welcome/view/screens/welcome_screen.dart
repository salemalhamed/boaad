import 'package:boaad/core/constants/app_images.dart';
import 'package:boaad/core/theme/theme_controller.dart';
import 'package:boaad/features/welcome/view/widgets/choose_path_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome_screen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: ThemeController().themeGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  AppImages.appLogo,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                ' اختر مسارك',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChoosePathWidget(
                    icon: Icons.movie_outlined,
                    label: 'مُنتج',
                    color: Color.fromARGB(255, 186, 0, 0),
                  ),
                  const SizedBox(width: 24),
                  ChoosePathWidget(
                    icon: Icons.recent_actors_outlined,
                    label: 'ممثل',
                    color: Color.fromARGB(255, 115, 178, 255),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
