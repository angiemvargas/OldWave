import 'package:flutter/material.dart';
import 'package:oldwave/src/ui/widgets/nav_bar.dart';
import 'package:oldwave/src/ui/widgets/search.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(child: NavBar(),),
          Search(),
        ],
        ),
    );
  }
}