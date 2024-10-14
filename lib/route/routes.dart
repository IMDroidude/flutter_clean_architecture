
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_architecture/ui/dashboard/dashboard_screen.dart';
import 'package:flutter_clean_architecture/ui/error_screen.dart';
import 'package:flutter_clean_architecture/ui/login/login_screen.dart';
import 'package:flutter_clean_architecture/ui/profile_screen.dart';
import 'package:flutter_clean_architecture/ui/splash/splash_screen.dart';
import 'package:go_router/go_router.dart'; 


class AppRouter {

  static const root = '/';
  static const loginScreen = '/login';
  static const dashboardScreen = '/dashboard';
  static const signUpScreen = '/signUp';
  static const setNewPasswordScreen = '/setNewPassword';


  // Global key to manage the navigator state
  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
  static BuildContext get context => _rootNavigatorKey.currentContext!;

  static GoRouter get router => _router;

  // Method to return the configured GoRouter instance
  static final GoRouter _router = GoRouter(
      initialLocation: root,
      navigatorKey: _rootNavigatorKey, // Using the root navigator key
      observers: [
        GoRouterObserver()
      ],
      routes: <GoRoute>[
        GoRoute(
          path: root,
          name: 'home',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: loginScreen,
          name: 'login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: dashboardScreen,
          name: 'dashboard',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: '/profile/:userId',
          name: 'profile',
          builder: (context, state) {
            final userId = state.pathParameters['userId'];
            return ProfileScreen(userId: userId!);
          },
        ),
      ],
      errorBuilder: (context, state) => const ErrorScreen(),
      debugLogDiagnostics: true,
    //   onException: (BuildContext ctx, GoRouterState state, GoRouter router) {
    //   String parent = state.uri.pathSegments.first;
    //   if (kDebugMode) {
    //     print("onException::${state.uri}==============");
    //   }
    //   router.go('/$parent/404', extra: state.uri.toString());
    // }, 
    );
  }

  class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('MyTest didPush: $route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('MyTest didPop: $route');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('MyTest didRemove: $route');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    print('MyTest didReplace: $newRoute');
  }
}