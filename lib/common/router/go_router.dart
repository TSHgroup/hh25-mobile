import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:odpalgadke/features/auth/presentation/pages/auth_login_page.dart';
import 'package:odpalgadke/features/auth/presentation/pages/auth_page.dart';
import 'package:odpalgadke/features/auth/presentation/pages/auth_register_page.dart';
import 'package:odpalgadke/features/auth/presentation/pages/auth_token_page.dart';
import 'package:odpalgadke/features/explore/presentation/pages/explore_page.dart';
import 'package:odpalgadke/features/home/presentation/pages/home_page.dart';
import 'package:odpalgadke/features/library/presentation/pages/library_page.dart';
import 'package:odpalgadke/features/profile/presentation/pages/profile_page.dart';
import 'package:odpalgadke/features/scenario/presentation/pages/scenario_page.dart';
import 'package:odpalgadke/features/scenario/presentation/pages/scenario_progress_page.dart';
import 'package:odpalgadke/features/scenario/presentation/pages/scenario_results_page.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

T? extra<T>(GoRouterState state) {
  final extra = state.extra;
  if (extra is T) {
    return extra;
  } else {
    throw TypeError();
  }
}

T? extraOrNull<T>(GoRouterState state) {
  final value = state.extra;
  return value is T ? value : null;
}

final router = GoRouter(
  initialLocation: '/auth',
  debugLogDiagnostics: kDebugMode,
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(path: '/auth', builder: (context, state) => AuthPage()),
    GoRoute(path: '/auth/token', builder: (context, state) => AuthTokenPage()),
    GoRoute(path: '/auth/login', builder: (context, state) => AuthLoginPage()),
    GoRoute(
      path: '/auth/register',
      builder: (context, state) => AuthRegisterPage(),
    ),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(path: '/explore', builder: (context, state) => ExplorePage()),
    GoRoute(path: '/library', builder: (context, state) => LibraryPage()),
    GoRoute(path: '/profile', builder: (context, state) => ProfilePage()),
    GoRoute(
      path: '/scenario',
      builder: (context, state) => ScenarioPage(scenario: extra(state)),
    ),
    GoRoute(
      path: '/scenario/progress',
      builder: (context, state) => ScenarioProgressPage(scenario: extra(state)),
    ),
    GoRoute(
      path: '/scenario/results',
      builder: (context, state) => ScenarioResultsPage(
        scenario: extra(state)['scenario'],
        conversation: extra(state)['conversation'],
      ),
    ),
  ],
);
