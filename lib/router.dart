import 'package:go_router/go_router.dart';
import 'package:go_router_sample/screens/about_screen.dart';
import 'package:go_router_sample/screens/detail_screen.dart';
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