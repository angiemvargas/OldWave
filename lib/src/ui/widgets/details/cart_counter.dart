
import 'package:flutter/material.dart';
import 'package:flutter_cart/model/cart_model.dart';
import 'package:intl/intl.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';
import 'package:provider/provider.dart';
import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:oldwave/src/ui/size_config.dart';

class CartCounter extends StatelessWidget {
  CartCounter({required this.product});

  final DetailProduct product;
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: GestureDetector(
              onTap: () {
                // dirigir a detalle?
              },
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.4),
                        offset: Offset(3, 2),
                        blurRadius: 7)
                  ],
                ),
                child: Image.network(
                  product.pictures.first,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              child: Text(
                product.name,
                style: TextStyle(color: Colors.black, fontSize: 16),
                overflow: TextOverflow.fade,
                maxLines: 3,
              ),
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: NumberFormat.currency(
                  name: 'COP \$',
                  decimalDigits: 0,
                ).format(product.price),
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).accentColor),
                children: [
                  TextSpan(
                      text: " 1",
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 20),
        IconButton(
          onPressed: () {
            //cartProvider.decrementItemFromCartProvider();
            
          },
          icon: Icon(Icons.remove),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: oldWaveDefaultPaddin / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        IconButton(
          onPressed: () {

            //cartProvider.incrementItemToCartProvider(indexCartItem);
          },
          icon: Icon(Icons.add),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
