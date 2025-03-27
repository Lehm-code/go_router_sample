import 'package:flutter/material.dart';
// https://www.youtube.com/watch?v=BYYD6A_XO14

class Page2Extra extends StatelessWidget{
  final int id;
  final String user;

  const Page2Extra({super.key, required this.id, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('go_routerのextraで受け渡し'),
      ),
      body: Column(
        children: [
          Text ('IDは$idです。'),
          Text ('名前は$userです。'),
        ]
      ),
    );
  }
}

class Page2Map extends StatelessWidget{
  final int id;
  final String user;

  const Page2Map({super.key, required this.id, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('go_routerのMapで受け渡し'),
      ),
      body: Column(
        children: [
          Text ('IDは$idです。'),
          Text ('名前は$userです。'),
        ]
      ),
    );
  }
}

class Page2Path extends StatelessWidget{
  final int id;
  final String user;

  const Page2Path({super.key, required this.id, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('go_routerのPathで受け渡し'),
      ),
      body: Column(
        children: [
          Text ('IDは$idです。'),
          Text ('名前は$userです。'),
        ]
      ),
    );
  }
}