import 'package:flutter/material.dart';
import 'package:oldwave/src/details/details_screen.dart';
import 'package:oldwave/src/ui/product_list.dart';
import 'package:oldwave/src/ui/cart_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    // '/': (BuildContext context) => Home(), no descomentar (redundant error)
    'cart': (BuildContext context) => CartScreen(),
    'details': (BuildContext context) => DetailScreen(),
    'list': (BuildContext context) => ProductList(),
  };
}
