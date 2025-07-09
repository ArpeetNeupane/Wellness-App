interface class AuthRouteName {
  static const String loginScreen = '/login-screen';
  static const String signupScreen = '/signup-screen';
}

class RoutesName {
  RoutesName._();

  static const String defaultScreen = '/';
  static const String dashboardScreen = '/dashboard-screen';
  static const String profileScreen = '/profile-screen';
  static const String quotesDetailScreen = '/quotes-detail-screen';
  static const String userInterestsScreen = '/user-interests-screen';

  static AuthRouteName get auth => AuthRouteName(); //getter for login and signup
}