import 'package:flutter/material.dart';
import 'package:oldwave/src/ui/cart_screen.dart';
import 'package:oldwave/src/ui/checkout_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    // '/': (BuildContext context) => Home(), no descomentar (redundant error)
    'checkout': (BuildContext context) => CheckoutPage(),
    'cart': (BuildContext context) => CartScreen(),
    //'details': (BuildContext context) => DetailScreen(),
  };
}
