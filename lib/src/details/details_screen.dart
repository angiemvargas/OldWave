import 'package:flutter/material.dart';
import 'package:oldwave/src/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  // final Product product;
  // const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff772ce8),
      elevation: 0,
    );
  }
}
