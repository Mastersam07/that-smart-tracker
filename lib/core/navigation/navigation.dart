import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import '../../features/authentication/presentation/email_success.dart';
import '../../features/authentication/presentation/forgot_password.dart';
import '../../features/authentication/presentation/login_screen.dart';
import '../../features/authentication/presentation/signup_screen.dart';
import '../../features/authentication/presentation/splash_screen.dart';

import 'not_found.dart';

class AppPages {
  static const String splash = "/";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String forgotPassword = "/forgotPassword";
  static const String emailSuccess = "/emailSuccess";
  static const String resetPassword = "/resetPassword";
  static const String verification = "/verification";
  static const String pinScreen = "/pinScreen";
  static const String userDetailScreen = "/user-detail";
}

class AppRouter {
  // All routes
  static final routes = RouteMap(
    onUnknownRoute: (route) {
      return const MaterialPage(child: NotFoundView());
    },
    routes: {
      AppPages.splash: (_) => const MaterialPage(child: SplashScreen()),
      AppPages.login: (_) => const MaterialPage(child: LoginScreen()),
      AppPages.signup: (_) => const MaterialPage(child: SignupScreen()),
      AppPages.forgotPassword: (_) =>
          const MaterialPage(child: ForgotPassword()),
      AppPages.emailSuccess: (_) => const MaterialPage(child: EmailSuccess()),
    },
  );
}
