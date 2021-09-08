import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OldWave',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF772CE8),
          title: const Text('OldWave'),
        ),
        body: const Center(
          child: Text('OldWave'),
        ),
      ),
    );
  }
}