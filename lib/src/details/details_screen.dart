import 'package:flutter/material.dart';
import 'package:oldwave/src/details/components/body.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/di/injector.dart';
import 'package:oldwave/src/ui/widgets/search.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  //final Product product;
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
      backgroundColor: Colors.blue,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
        '/home/sebastian/Documentos/empresariales/project-final/OldWave/web/icons/Icon-192.png',
        color:Colors.white,
        ), 
        onPressed: () => Navigator.pop(context)
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("iconSearcg"), 
          onPressed: null
        ),
        IconButton(
          icon: SvgPicture.asset("iconcart.png"), 
          onPressed: null 
        ),
          SizedBox(width: 50/2,)  
      ],
    );
  }
  
}