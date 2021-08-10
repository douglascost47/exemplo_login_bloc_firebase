

import 'package:exemplo_login/features/onboarding/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static  Route<dynamic> routes(RouteSettings settings) {
    var newRoute = MaterialPageRoute(
      builder: (context) => const OnBoardingPage(),
    );
    switch (settings.name) {
      case '/':
        newRoute = MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
        break;
      case '/register':

        break;

    }
    return newRoute;

  }

}