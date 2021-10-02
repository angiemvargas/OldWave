import 'package:flutter/material.dart';
import 'package:oldwave/src/details/details_screen.dart';
import 'package:oldwave/src/ui/checkout_page.dart';
import 'package:oldwave/src/ui/product_list.dart';
// import 'package:oldwave/src/ui/widgets/cart_widgets/cart_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    // '/': (BuildContext context) => Home(), no descomentar (redundant error)
    'checkout': (BuildContext context) => CheckoutPage(),
    // 'cart': (BuildContext context) => CartScreen(),
    'details': (BuildContext context) => DetailScreen(),
    'list': (BuildContext context) => ProductList(),
  };
}
