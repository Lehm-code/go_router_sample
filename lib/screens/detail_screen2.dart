import 'package:flutter/material.dart';

class DetailScreen2 extends StatelessWidget {
  const DetailScreen2({
      super.key,
      required this.userName,
      required this.userId
      });

  final String userName;
  final int userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Center(
        child: Text(
          "Hello $userName ! \n Your ID is $userId.",
        ),
      ),
    );
  }
}