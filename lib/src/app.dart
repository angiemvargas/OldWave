import 'package:flutter/material.dart';
import 'package:oldwave/src/ui/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OldWave',
      home: Home()
    );
  }
}