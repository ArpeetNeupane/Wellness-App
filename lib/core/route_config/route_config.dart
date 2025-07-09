//euta route name call garyo vane kata lera jane vanera define garine file

import 'package:flutter/material.dart';
import 'package:wellness/core/route_config/route_names.dart';
import 'package:wellness/features/auth/login_screen.dart';
import 'package:wellness/features/auth/signup_screen.dart';
import 'package:wellness/features/dashboard/dashboard.dart';
import 'package:wellness/profile.dart';
import 'package:wellness/quotes_detail.dart';
import 'package:wellness/user_interests.dart';

class RouteConfig {
  RouteConfig._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final String? screenName = settings.name;
    final dynamic args = settings.arguments;

    switch (screenName) {
      case RoutesName.defaultScreen:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        );
      case RoutesName.dashboardScreen:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        );
      case AuthRouteName.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case AuthRouteName.signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case RoutesName.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case RoutesName.quotesDetailScreen:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => QuotesDetailScreen(category: args),
          );
        }
        return _errorRoute();
      case RoutesName.userInterestsScreen:
        return MaterialPageRoute(
          builder: (_) => const UserInterestsScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(child: Text('No route defined')),
      ),
    );
  }
}