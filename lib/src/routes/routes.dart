import 'package:flutter/material.dart';
import 'package:oldwave/src/details/details_screen.dart';
import 'package:oldwave/src/ui/pages/checkout_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    // '/': (BuildContext context) => Home(), no descomentar (redundant error)
    'checkout': (BuildContext context) => CheckoutPage(),
    'details': (BuildContext context) => DetailScreen(),
  };
}
