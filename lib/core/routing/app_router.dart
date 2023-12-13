import 'package:docdoc/features/login/ui/login_screen.dart';

import 'routers_string.dart';
import '../../features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
         default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
   
  }
}
