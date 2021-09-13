import 'package:flutter/material.dart';
import 'package:oldwave/src/models/repository/product_list_repository.dart';
import 'package:oldwave/src/network_provider/product_list_service.dart';
import 'package:oldwave/src/ui/widgets/Banner_discount.dart';
import 'package:oldwave/src/ui/widgets/carrusel_categories.dart';
import 'package:oldwave/src/ui/widgets/general_information.dart';
import 'package:oldwave/src/ui/widgets/nav_bar.dart';
import 'package:oldwave/src/ui/widgets/quality_option.dart';
import 'package:oldwave/src/ui/widgets/search.dart';

class Home extends StatelessWidget{

  ProductListService service = ProductListService();

  void _service (){
    service.getProductList('localhost:8080', 'x');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(child: NavBar(),),
            Search(),
            BannerDiscount(),
            FloatingActionButton(
              onPressed: _service),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text('¿Qué estás buscando hoy?', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff772ce8), fontSize: 18.0)),
            ),
            CarruselCategories(),
            QualityOption(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: GeneralInformation(),
            ),
          ],
          ),
      ),
    );
  }
}