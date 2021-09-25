import 'package:flutter/material.dart';
import 'package:oldwave/src/details/components/Description.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';
import 'add_cart.dart';
import 'TitleAndImage.dart';

class Body extends StatelessWidget {
  // final Product product;

  // const Body({required Key key, required this.product}) : super(key: key);
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
                      Description(),
                      AddToCart(),
                    ],
                  ),
                ),
                TitleAndImage()
              ],
            ),
          )
        ],
      ),
    );
  }
}
