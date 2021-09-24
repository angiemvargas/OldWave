import 'package:flutter/material.dart';
import 'package:oldwave/src/details/components/Description.dart';
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
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),

                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Description(),

                    
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