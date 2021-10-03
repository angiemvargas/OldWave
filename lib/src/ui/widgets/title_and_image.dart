import 'package:flutter/material.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';
import 'package:intl/intl.dart';

class TitleAndImage extends StatelessWidget {
  DetailProduct product;

  TitleAndImage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: oldWaveDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.name,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: oldWaveDefaultPaddin),
          Row(
            children: <Widget>[
              Text(NumberFormat.currency(
                name: 'COP \$',
                decimalDigits: 0,
              ).format(product.price)),
              SizedBox(width: oldWaveDefaultPaddin),
              Expanded(
                child: Image.network(
                  product.pictures.first,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
