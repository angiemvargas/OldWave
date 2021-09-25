import 'package:flutter/material.dart';
import 'package:oldwave/src/details/components/body.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/di/injector.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';
import 'package:oldwave/src/ui/widgets/search.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  // final Product product;
  // const DetailScreen({Key key, this.product}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:buildAppBar(context),
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