import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';


class AddToCart extends StatelessWidget {
  // const AddToCart({
  //   Key key,
  //   @required this.product,
  // }) : super(key: key);

  // final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: oldWaveDefaultPaddin ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: oldWaveDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
          
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "/home/sebastian/Documentos/empresariales/project-final/OldWave/lib/src/ui/material_ui/icons/cart-falso.png",
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: oldWaveColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}