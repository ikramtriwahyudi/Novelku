import 'package:go_router/go_router.dart';
import 'package:novelku/screen/detail.dart';
import 'package:novelku/screen/home_screen.dart';
import 'package:novelku/screen/splash_screen.dart';

/// * We can use 3 type of routes in GoRouter
///   * context.pop() => same as Navigator.pop(context)
///     * ex: `() => context.pop()`
///   * context.pushNamed(nameRoute) => same as Navigator.pushName(context, nameRoute)
///     * ex: `() => context.pushNamed(Routes.authOnboarding)`
///   * context.goNamed(nameRoute) => same as Navigator.pushReplacement(context, nameRoute)
///     * ex: `() => context.goNamed(Routes.splash)`
///
/// reference for go vs push in GoRouter:
/// https://codewithandrea.com/articles/flutter-navigation-gorouter-go-vs-push/

class AppRoutes {
  // splash
  static const splash = 'splash';
  // home
  static const home = 'home';
  // detail
  static const detail = 'detail';

  static const root = 'root';
}

final routes = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
      name: AppRoutes.root,
      routes: [
        GoRoute(
          path: 'splash',
          name: AppRoutes.splash,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: 'home',
          name: AppRoutes.home,
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
              path: 'detail',
              name: AppRoutes.detail,
              builder: (context, state) => const DetailScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
