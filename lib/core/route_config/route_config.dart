//euta route name call garyo vane kata lera jane vanera define garine file

import 'package:flutter/material.dart';
import 'package:wellness/add_category.dart';
import 'package:wellness/add_health_tips.dart';
import 'package:wellness/add_quotes.dart';
import 'package:wellness/core/route_config/route_names.dart';
import 'package:wellness/features/auth/change_password.dart';
import 'package:wellness/features/auth/forgot_password.dart';
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
      case AuthRouteName.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case AuthRouteName.changePassword:
        return MaterialPageRoute(
          builder: (_) => const ChangePasswordScreen(),
        );
      case RoutesName.addCategoryScreen:
        return MaterialPageRoute(
          builder: (_) => const AddCategoryScreen(),
        );
      case RoutesName.addQuotesScreen:
        return MaterialPageRoute(
          builder: (_) => const AddQuotesScreen(),
        );
      case RoutesName.addHealthTipsScreen:
        return MaterialPageRoute(
          builder: (_) => const AddHealthTipsScreen(),
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