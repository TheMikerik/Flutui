import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutui/features/comnponents/bottom_sheet/bottom_sheet_screen.dart';
import 'package:flutui/features/pages/settings/settings_screen.dart';
import 'package:flutui/features/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: HomeScreen.routePath,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: HomeScreen.routePath,
        name: HomeScreen.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
        routes: [
          GoRoute(
            path: SettingsScreen.routePath,
            name: SettingsScreen.name,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: SettingsScreen(),
            ),
          ),
          GoRoute(
            path: BottomSheetScreen.routePath,
            name: BottomSheetScreen.name,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: BottomSheetScreen(),
            ),
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => const MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text('Oops! Something went wrong.'),
        ),
      ),
    ),
  );
}
