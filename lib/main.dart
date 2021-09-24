import 'package:flutter/material.dart';
import 'package:oldwave/src/details/details_screen.dart';
import 'package:oldwave/src/routes/routes.dart';
import 'package:oldwave/src/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OldWave',
      home: Home(),
      routes: getApplicationRoutes(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}
