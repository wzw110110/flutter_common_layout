import 'package:common_ui/feature/home/presentation/home_screen.dart';
import 'package:common_ui/feature/media_platform/presentation/media_platform_screen.dart';
import 'package:common_ui/feature/profile/presentation/profile_screen.dart';
import 'package:common_ui/feature/project/presentation/project_screen.dart';
import 'package:common_ui/feature/square/presentation/square_screen.dart';
import 'package:common_ui/routers/main_tabbr.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'go_router_build.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<MainTabbarShellRouteData>(
  routes: <TypedRoute<RouteData>> [
    TypedGoRoute<HomeRouteData>(path: '/home'),
    TypedGoRoute<ProjectRouteData>(path: '/project'),
    TypedGoRoute<SquareRouteData>(path: '/square'),
    TypedGoRoute<MediaPlatformRouteData>(path: '/mediaPlatform'),
    TypedGoRoute<ProfileRouteData>(path: '/profile'),
  ],
)

class MainTabbarShellRouteData extends ShellRouteData {
  const MainTabbarShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return MainTabbr(child: navigator);
  }
}

@immutable
class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: HomeScreen());
  }
}

@immutable
class MediaPlatformRouteData extends GoRouteData {
  const MediaPlatformRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: MediaPlatformScreen());
  }
}

@immutable
class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: ProfileScreen());
  }
}

@immutable
class ProjectRouteData extends GoRouteData {
  const ProjectRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: ProjectScreen());
  }
}

@immutable
class SquareRouteData extends GoRouteData {
  const SquareRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: SquareScreen());
  }
}