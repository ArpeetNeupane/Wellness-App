interface class AuthRouteName {
  static const String loginScreen = '/login-screen';
  static const String signupScreen = '/signup-screen';
  static const String forgotPasswordScreen = '/forgot-password';
  static const String changePassword = '/change-password';
}

class RoutesName {
  RoutesName._();

  static const String defaultScreen = '/';
  static const String dashboardScreen = '/dashboard-screen';
  static const String profileScreen = '/profile-screen';
  static const String quotesDetailScreen = '/quotes-detail-screen';
  static const String userInterestsScreen = '/user-interests-screen';
  static const String addCategoryScreen = '/add-category';
  static const String addQuotesScreen = '/add-quotes';
  static const String addHealthTipsScreen = '/add-health-tips';

  static AuthRouteName get auth => AuthRouteName(); //getter for login, signup, forgot password and change password
}