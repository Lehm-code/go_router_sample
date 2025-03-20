import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoScreen extends StatelessWidget {
  const GoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Go")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/detail');
          },
          child: const Text(
            "Detail画面へ",
          ),
        ),
      ),
    );
  }
}