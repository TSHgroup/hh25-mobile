import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:odpalgadke/features/auth/presentation/pages/auth_page.dart';
import 'package:odpalgadke/features/explore/presentation/pages/explore_page.dart';
import 'package:odpalgadke/features/home/presentation/pages/home_page.dart';
import 'package:odpalgadke/features/library/presentation/pages/library_page.dart';
import 'package:odpalgadke/features/profile/presentation/pages/profile_page.dart';
import 'package:odpalgadke/features/scenario/presentation/pages/scenario_page.dart';

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
  initialLocation: '/home',
  debugLogDiagnostics: kDebugMode,
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(path: '/auth', builder: (context, state) => AuthPage()),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(path: '/explore', builder: (context, state) => ExplorePage()),
    GoRoute(path: '/library', builder: (context, state) => LibraryPage()),
    GoRoute(path: '/profile', builder: (context, state) => ProfilePage()),
    GoRoute(path: '/scenario', builder: (context, state) => ScenarioPage()),
  ],
);
