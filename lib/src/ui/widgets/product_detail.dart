import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:oldwave/src/ui/widgets/TitleAndImage.dart';
import 'package:oldwave/src/ui/widgets/description.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';
import '../../details/components/add_cart.dart';

class ProductDetail extends StatelessWidget {

  DetailProduct product;

  ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: oldWaveDefaultPaddin,
                    right: oldWaveDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Description(product: product,),
                      AddToCart(),
                    ],
                  ),
                ),
                TitleAndImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
