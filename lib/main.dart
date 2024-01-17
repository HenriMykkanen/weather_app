import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/presentation/fromjson_test_widget.dart';
import 'package:weather_app/presentation/home_screen.dart';
import 'package:weather_app/presentation/search_screen.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/widgets/ScaffoldWithNavbar.dart';
import 'package:weather_app/data/forecast_repository.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

// GoRouter configuration
// Navigation based on:
// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/shell_route.dart
final GoRouter _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/a',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return ScaffoldWithNavBar(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/a',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: '/b',
          builder: (BuildContext context, GoRouterState state) {
            return SearchScreen();
          },
        ),
      ],
    ),
  ],
);

void main() {
  runApp(ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(context, ref.watch(appThemeProvider)),
    );
  }
}
