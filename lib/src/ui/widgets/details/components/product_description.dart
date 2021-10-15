import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:oldwave/src/models/detail_product.dart';

import 'package:oldwave/src/ui/material_ui/constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  final DetailProduct product;
  final GestureTapCallback? pressOnSeeMore;
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.name,
            style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ),
        
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
            style: TextStyle(color: Colors.black, fontSize: 16)
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            width:  getProportionateScreenWidth(100),
            decoration: BoxDecoration(
              color:
                  Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child:  Text.rich(
              TextSpan(
                text: NumberFormat.currency(
                  name: 'COP \$',
                  decimalDigits: 0,
                ).format(product.price),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
              ),
          ),
        
      ],
    );
  }
}
