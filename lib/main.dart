import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_cart/flutter_cart.dart';
// import 'package:flutter_cart/model/cart_response_wrapper.dart';
import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:oldwave/src/routes/routes.dart';
import 'package:oldwave/src/ui/home.dart';

void main() {
  runApp(MyApp());

  // var cart = FlutterCart();

  // cart.addToCart(productId: '001', unitPrice: 100);
  // cart.addToCart(productId: '002', unitPrice: 200);
  // dynamic aux = cart.addToCart(productId: '003', unitPrice: 350);
  // print(cart);
  // print(cart.cartItem);
  // print(cart.message);
  // print(cart.runtimeType);
  // print(cart.toString());
  // print(cart.getTotalAmount());
  // // print(cart.getSpecificItemFromCart(cartId));
  // print(cart.getCartItemCount());
  // print(cart.decrementItemFromCart(1));
  // print(cart.incrementItemToCart(2));
  // print(cart);
  // print(aux);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'OldWave',
        home: Home(),
        routes: getApplicationRoutes(),
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
