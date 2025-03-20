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
                context.go('/detail', extra: 'Flutter user');
              },
              child: const Text(
                "Detail画面へ(値渡し1)",
              ),
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/detail2/Flutter user/16059');
              },
              child: const Text(
                "Detail画面へ(値渡し2)",
              ),
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/about');
              },
              child: const Text(
                "About画面へ(go)",
              ),
          ),
          ElevatedButton(
              onPressed: () {
                context.push('/about');
              },
              child: const Text(
                "About画面へ(push)",
              ),
          ),
          ElevatedButton(
              onPressed: () {
                context.goNamed('about');
              },
              child: const Text(
                "About画面へ(goNamed)",
              ),
          ),
          // ログイン画面には戻れないようにする 
          ElevatedButton(
              onPressed: () {
                context.pushReplacement('/about');
              },
              child: const Text(
                "About画面へ(pushReplacement)",
              ),
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/setting');
              },
              child: const Text(
                "Setting画面へ",
              ),
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/go');
              },
              child: const Text(
                "Go画面へ",
              ),
          ),
        ],
      ),
    );
  }
}