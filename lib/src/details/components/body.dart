import 'package:flutter/material.dart';
import 'package:oldwave/src/models/product.dart';

class Body extends StatelessWidget {
  //final Product product;
  //const Body({Key key, this.product}): super(key:key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin:EdgeInsets.only(top:size.height *0.3),
                  height: 500,
                  decoration:BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text("nombre del producto con recursos ui")
                  ],
                )
              ],
              ),
          )
        ],
        ),
    );
  }
}