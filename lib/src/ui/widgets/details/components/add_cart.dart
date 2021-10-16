import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/cart_screen.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';
import 'package:oldwave/src/ui/size_config.dart';

import 'package:provider/provider.dart';

import 'counter.dart';

class AddToCart extends StatelessWidget {
  DetailProduct product;
  Counter numItem;

  AddToCart({required this.product, required this.numItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: oldWaveDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: oldWaveDefaultPaddin),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: oldWaveColor,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/imgs/carrito-icon.svg",
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: Consumer<CartProvider>(builder: (context, cart, child) {
                return _AddButton(
                  product: product,
                  numItem: numItem,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class _AddButton extends StatefulWidget {
  final DetailProduct product;
  Counter numItem;

  _AddButton({required this.product, required this.numItem});

  @override
  __AddButtonState createState() => __AddButtonState();
}

class __AddButtonState extends State<_AddButton> {
  late CartProvider _cartProvider;

  @override
  void initState() {
    _cartProvider = Provider.of<CartProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: oldWaveColor,
        ),
        onPressed: () {
          _cartProvider.addToCart(widget.product,
              funcQuantity: widget.numItem.numItem);
          setState(() {});
        },
        child: Text(
          'Comprar',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
