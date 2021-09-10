import 'package:flutter/material.dart';
import 'package:oldwave/src/ui/widgets/carrusel_categories.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text('¿Qué estás buscando hoy?', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff772ce8), fontSize: 18.0)),
          ),
          CarruselCategories()
        ],
        ),
    );
  }
}