import 'package:flutter/material.dart';
import 'package:oldwave/src/models/product.dart';



class Description extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 400),
      child: Text(
        "La Nevera HACEB no frost de 243 Lts. Cuenta con control interactivo interno, y puedes elegir en sus 5 niveles de temperatura se gún tu necesidad, maneja alarma de puerta abierta. .",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
