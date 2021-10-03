import 'package:flutter/material.dart';
import 'package:flutter_cart/model/cart_model.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:oldwave/src/ui/size_config.dart';

class CartCard extends StatelessWidget {
  CartCard({required this.cartItem, required this.indexCartItem});

  final CartItem cartItem;
  final int indexCartItem;

  @override
  Widget build(BuildContext context) {
    var cartProvider = context.watch<CartProvider>();
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
                  cartItem.productDetails.pictures.first,
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
                cartItem.productDetails.name,
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
                ).format(cartItem.productDetails.price),
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).accentColor),
                children: [
                  TextSpan(
                      text: " x${cartItem.quantity}",
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 20),
        IconButton(
          onPressed: () {
            cartProvider.decrementItemFromCartProvider(indexCartItem);
          },
          icon: Icon(Icons.remove),
        ),
        IconButton(
          onPressed: () {
            cartProvider.incrementItemToCartProvider(indexCartItem);
          },
          icon: Icon(Icons.add),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
