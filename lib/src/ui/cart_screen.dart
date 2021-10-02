import 'package:flutter/material.dart';
import 'package:oldwave/src/blocs/checkout_page_bloc.dart';
import 'package:oldwave/src/ui/base_state.dart';
import 'package:provider/provider.dart';

import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:oldwave/src/ui/widgets/cart/body.dart';
import 'package:oldwave/src/ui/widgets/cart/check_out_card.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends BaseState<CartScreen, CheckoutPageBloc> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      // body: CartCard(cart: cart),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    var cartProvider = context.watch<CartProvider>();

    int itemCount = cartProvider.flutterCart.cartItem.length;
    String msg = "$itemCount ";

    if (itemCount == 1) {
      msg += "item";
    } else {
      msg += "items";
    }

    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Carrito de compras",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            msg,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  @override
  CheckoutPageBloc getBlocInstance() {
    return CheckoutPageBloc();
  }
}
