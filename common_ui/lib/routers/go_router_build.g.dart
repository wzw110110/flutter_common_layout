// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_build.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainTabbarShellRouteData,
    ];

RouteBase get $mainTabbarShellRouteData => ShellRouteData.$route(
      navigatorKey: MainTabbarShellRouteData.$navigatorKey,
      factory: $MainTabbarShellRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/project',
          factory: $ProjectRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/square',
          factory: $SquareRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/mediaPlatform',
          factory: $MediaPlatformRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/profile',
          factory: $ProfileRouteDataExtension._fromState,
        ),
      ],
    );

extension $MainTabbarShellRouteDataExtension on MainTabbarShellRouteData {
  static MainTabbarShellRouteData _fromState(GoRouterState state) =>
      const MainTabbarShellRouteData();
}

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProjectRouteDataExtension on ProjectRouteData {
  static ProjectRouteData _fromState(GoRouterState state) =>
      const ProjectRouteData();

  String get location => GoRouteData.$location(
        '/project',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SquareRouteDataExtension on SquareRouteData {
  static SquareRouteData _fromState(GoRouterState state) =>
      const SquareRouteData();

  String get location => GoRouteData.$location(
        '/square',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MediaPlatformRouteDataExtension on MediaPlatformRouteData {
  static MediaPlatformRouteData _fromState(GoRouterState state) =>
      const MediaPlatformRouteData();

  String get location => GoRouteData.$location(
        '/mediaPlatform',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteDataExtension on ProfileRouteData {
  static ProfileRouteData _fromState(GoRouterState state) =>
      const ProfileRouteData();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
