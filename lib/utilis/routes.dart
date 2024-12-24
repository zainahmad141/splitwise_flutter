import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:splitwise_flutter/view/onboarding/welcome_screen.dart';
import 'package:splitwise_flutter/view/onboarding/splash_screen.dart';

import '../view/auth/login_in.dart';
import '../view/auth/sign_up.dart';
import '../view/auth/sign_up_info.dart';
import '../view/dashboard/dashboard_screen.dart';
import '../view/onboarding/on_boarding_screen.dart';
final GoRouter router = GoRouter(
  initialLocation:'/',// isAuthenticated ? '/home' : '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: WelcomeScreen.route,
          builder: (BuildContext context, GoRouterState state) {
            return const WelcomeScreen();
          },
        ),
        GoRoute(
          path: MainScreen.route,
          builder: (BuildContext context, GoRouterState state) {
            return const MainScreen();
          },
        ),
        GoRoute(
          path: LogInScreen.route,
          builder: (BuildContext context, GoRouterState state) {
            return const LogInScreen();
          },
        ),
        GoRoute(
          path: SignUpScreen.route,
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpScreen();
          },
        ),
        GoRoute(
          path: SignupInfo.route,
          builder: (BuildContext context, GoRouterState state) {
            return const SignupInfo();
          },
        ),
        GoRoute(
          path: DashboardScreen.route,
          builder: (BuildContext context, GoRouterState state) {
            return const DashboardScreen();
          },
        ),
      ],
    ),
  ],
);