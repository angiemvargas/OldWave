import 'package:flutter/material.dart';
import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:oldwave/src/ui/size_config.dart';
import 'package:oldwave/src/ui/widgets/cart/cart_card.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var cartProvider = context.watch<CartProvider>();
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: cartProvider.flutterCart.cartItem.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            // key: Key(demoCarts[index].product.id.toString()),
            key: Key('$index'),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                cartProvider.decrementItemFromCartProvider(index);
              });
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.delete),
                ],
              ),
            ),
            // child:
            // CartCard(
            //   product: cartProvider.getSpecificItemFromCartProvider(id),
            // ),
            child: Text(
              cartProvider.flutterCart.cartItem[index].productName.toString(),
            ),
          ),
        ),
      ),
    );
  }
}
