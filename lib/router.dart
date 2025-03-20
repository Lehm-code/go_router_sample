import 'package:go_router/go_router.dart';
import 'package:go_router_sample/screens/about_screen.dart';
import 'package:go_router_sample/screens/detail_screen.dart';
import 'package:go_router_sample/screens/detail_screen2.dart';
import 'package:go_router_sample/screens/home_screen.dart';
import 'package:go_router_sample/screens/setting_screen.dart';
import 'package:go_router_sample/screens/go_screen.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  // アプリの初期画面
  initialLocation: '/',
  routes: [
    GoRoute(
        name: 'home',
        path: '/',
        routes: [
          GoRoute(
            name: 'detail',
            path: 'detail',
            builder: (context, state) => DetailScreen(
              userName: state.extra as String,
            ),
          )
        ],
        builder: (context, state) => const HomeScreen()),
    GoRoute(
      name: 'detail2',
      path: '/detail2/:user_name/:user_id',
      builder: (context, state) {
        final userName = state.pathParameters['user_name'];
        final userId = state.pathParameters['user_id'];
        return DetailScreen2(
          userName: userName!,
          userId: int.parse(userId!),
        );
      },
    ),
    GoRoute(
        name: 'about',
        path: '/about',
        builder: (context, state) => const AboutScreen()),
    GoRoute(
        name: 'setting',
        path: '/setting',
        builder: (context, state) => const SettingScreen()),
    GoRoute(
        name: 'go',
        path: '/go',
        builder: (context, state) => const GoScreen()),
  ],
);