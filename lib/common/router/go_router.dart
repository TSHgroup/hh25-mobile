import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/util/app_scaffold.dart';

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
  initialLocation: '/splash',
  debugLogDiagnostics: kDebugMode,
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => AppScaffold(children: []),
    ),
  ],
);
