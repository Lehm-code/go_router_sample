import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String get routeName => 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                context.go('/page2_extra', extra: (16059, 'extra-Mike'));
              },
              child: const Text(
                "Extraでのデータ受け渡し",
              ),
          ),
          // Mapでのデータ受け渡し
          ElevatedButton(
              onPressed: () {
                context.goNamed(
                  'page2_map',
                  queryParameters: {
                    'id' : '16059',
                    'user' : 'map-Mike'
                  }
                );
              },
              child: const Text(
                "Mapでのデータ受け渡し",
              ),
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/page2_map?id=16059&user=path-Mike');
              },
              child: const Text(
                "Pathでのデータ受け渡し",
              ),
          ),
        ],
      ),
    );
  }
}