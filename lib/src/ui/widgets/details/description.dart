import 'package:flutter/material.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';

class Description extends StatelessWidget {

  DetailProduct product;

  Description({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: oldWaveDefaultPaddin),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
