import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/about');
          },
          child: const Text(
            "Go To About Screen",
          ),
        ),
      ),
    );
  }
}