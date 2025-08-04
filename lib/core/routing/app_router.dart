import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/features/home/ui/home_screen.dart';
import 'package:flutter_advanced_courese/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_advanced_courese/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_advanced_courese/core/di/dependency_injection.dart';
import 'package:flutter_advanced_courese/core/routing/routes.dart';
import 'package:flutter_advanced_courese/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_courese/features/login/ui/login_screen.dart';
import 'package:flutter_advanced_courese/features/onboarding/onboarding_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('404')),
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
