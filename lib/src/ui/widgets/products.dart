import 'package:flutter/material.dart';
import 'package:oldwave/src/models/detail_parameters.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/ui/widgets/single_product.dart';
import 'package:oldwave/src/ui/details_screen.dart';


class ProductsWidget extends StatelessWidget {

  List<Product> products;
  final ValueChanged<DetailParameters> onService;

  ProductsWidget({required this.products, required this.onService});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: .63,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 10,
      children: products.map((Product product) {
        return SingleProductWidget(product: product, 
        press: (){
          var detailPara = DetailParameters(product.id, product.seller.id);
          onService(detailPara);
        }
        );
      }).toList());
        
  }

}