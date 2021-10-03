import 'package:flutter/material.dart';
import 'package:oldwave/common/theme.dart';
import 'package:provider/provider.dart';
import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:oldwave/src/ui/home.dart';

void main() {
  runApp(MyApp());
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
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: appTheme,
      ),
    );
  }
}
