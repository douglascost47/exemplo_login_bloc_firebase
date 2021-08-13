

import 'package:exemplo_login/features/onboarding/pages/onboarding_page.dart';
import 'package:exemplo_login/features/register/bloc/register_bloc.dart';
import 'package:exemplo_login/features/register/flow/register_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {

  static Route<dynamic> routes(RouteSettings settings) {
    var newRoute = MaterialPageRoute(
      builder: (context) => const OnBoardingPage(),
    );
    switch (settings.name) {
      case OnBoardingPage.route:
        newRoute = MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
        break;
      case RegisterFlow.route:
        newRoute = MaterialPageRoute(
          builder: (context) => BlocProvider<RegisterBloc>(
            create: (context) => RegisterBloc(),
            child: const RegisterFlow(),
          ),
        );
        break;

    }
    return newRoute;

  }

}