import 'package:go_router/go_router.dart';
import 'package:go_router_sample/screens/about_screen.dart';
import 'package:go_router_sample/screens/detail_screen.dart';
import 'package:go_router_sample/screens/home_screen.dart';
import 'package:go_router_sample/screens/setting_screen.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    GoRoute(
        name: 'home',
        path: '/',
          routes: [
            GoRoute(
              name: 'detail',
              path: 'detail',
              builder: (context, state) => const DetailScreen(),
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
  ],
);