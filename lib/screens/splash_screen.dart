import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:school/screens/login_page.dart';
import 'package:school/screens/login_page.dart';
import 'package:school/screens/welcome_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreenPage';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Lottie.asset(
          'assets/animations/Animation - 1716150373147.json',
        ),
      ),
      nextScreen: loginPage(),
      duration: 2000,
      splashIconSize: 1200000,
    );
  }
}
