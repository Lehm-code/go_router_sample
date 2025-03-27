import 'package:go_router/go_router.dart';
import 'package:go_router_sample/ランドノート/home.dart';
import 'package:go_router_sample/ランドノート/page2.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  // アプリの初期画面
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomeScreen()),
    // Extraでのデータ受け渡し
    GoRoute(
      name: 'page2_extra',
      path: '/page2_extra',
      builder: (context, state) {
        final (id, user) = state.extra as (int, String);
        return Page2Extra(id: id, user: user);
        } ,
      ),
    // Mapでのデータ受け渡し
    GoRoute(
      name: 'page2_map',
      path: '/page2_map',
      builder: (context, state) {
        final map = state.uri.queryParameters;
        int id = int.parse(map['id']!);
        String user = map['user']!;
        return Page2Map(id: id, user: user);
        } ,
      ),
    // Pathでのデータ受け渡し
    GoRoute(
      name: 'page2_path',
      path: '/page2_path',
      builder: (context, state) {
        final map = state.uri.queryParameters;
        int id = int.parse(map['id']!);
        String user = map['user']!;
        return Page2Path(id: id, user: user);
        } ,
      ),

  ],
);