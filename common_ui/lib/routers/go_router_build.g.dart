// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_build.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainTabbarShellRouteData,
      $articleRouteData,
      $webViewRouteData,
      $loginRouteData,
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

RouteBase get $articleRouteData => GoRouteData.$route(
      path: '/article/:cid',
      factory: $ArticleRouteDataExtension._fromState,
    );

extension $ArticleRouteDataExtension on ArticleRouteData {
  static ArticleRouteData _fromState(GoRouterState state) => ArticleRouteData(
        int.parse(state.pathParameters['cid']!),
      );

  String get location => GoRouteData.$location(
        '/article/${Uri.encodeComponent(cid.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $webViewRouteData => GoRouteData.$route(
      path: '/detail',
      factory: $WebViewRouteDataExtension._fromState,
    );

extension $WebViewRouteDataExtension on WebViewRouteData {
  static WebViewRouteData _fromState(GoRouterState state) => WebViewRouteData(
        link: state.uri.queryParameters['link']!,
      );

  String get location => GoRouteData.$location(
        '/detail',
        queryParams: {
          'link': link,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRouteData => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteDataExtension._fromState,
    );

extension $LoginRouteDataExtension on LoginRouteData {
  static LoginRouteData _fromState(GoRouterState state) =>
      const LoginRouteData();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
