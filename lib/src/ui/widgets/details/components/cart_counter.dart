import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';
import 'package:oldwave/src/ui/size_config.dart';
import 'package:oldwave/src/ui/widgets/details/components/rounded_icon_btn.dart';

import 'counter.dart';

class CartCounter extends StatefulWidget {
  final DetailProduct product;
  Counter numItem;
  CartCounter({required this.product, required this.numItem});
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  @override
  Widget build(BuildContext context) {
    Counter numItem = widget.numItem;
    var product = widget.product;
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: GestureDetector(
              onTap: () {
                // Dirigir a detalle?
              },
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.network(product.seller.logo,
                    height: 10, width: 10),
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              child: Text(
                'Vendedor : ' + product.seller.name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                overflow: TextOverflow.fade,
                maxLines: 3,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
        SizedBox(width: 10),
        RoundedIconBtn(
          icon: Icons.remove,
          showShadow: true,
          press: () {
            if (numItem.numItem > 1) {
              setState(() {
                numItem.down();
              });
            }
          },
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: oldWaveDefaultPaddin / 2),
          child: Text(
            numItem.numItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        RoundedIconBtn(
          icon: Icons.add,
          showShadow: true,
          press: () {
            setState(() {
              numItem.up();
            });
          },
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
