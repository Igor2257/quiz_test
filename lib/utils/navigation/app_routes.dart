import 'package:flutter/material.dart';
import 'package:quiz_test/screens/login_screen/login_screen.dart';
import 'package:quiz_test/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';
  static const String onboardingScreen = '/onboarding_screen';
  static const String quizScreen = '/quiz_screen';
  static const String registerScreen = '/register_screen';
  static const String splashScreen = '/splash_screen';

  static Map<String, Widget Function(BuildContext)> getAppRoutes = {
    AppRoutes.loginScreen: (context) => const LoginScreen(),
    AppRoutes.onboardingScreen: (context) => const NavigationScreen(),
    AppRoutes.quizScreen: (context) => const NavigationScreen(),
    AppRoutes.registerScreen: (context) => const RegisterScreen(),
    AppRoutes.splashScreen: (context) => const SplashScreen(),
  };
}
