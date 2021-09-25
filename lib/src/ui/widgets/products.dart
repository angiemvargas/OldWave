import 'package:flutter/material.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/ui/widgets/single_product.dart';

class ProductsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: .63,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 10,
      children: <Product>[
        Product(2,"White Shoes","Nike","http://http2.mlstatic.com/D_983596-MCO41780205987_052020-I.jpg",new City(1, "Medellin"),12.0,5,new Seller(1, "Karol")
        ),
        Product(3,"White Shoes","Nike","http://http2.mlstatic.com/D_951532-MCO31083347507_062019-I.jpg",new City(1, "Medellin"),12.0,5,new Seller(1, "Karol")
        ),
        Product(4,"White Shoes","Nike","http://http2.mlstatic.com/D_804312-MLA44405465106_122020-I.jpg",new City(1, "Medellin"),12.0,5,new Seller(1, "Karol")
        )
      ].map((Product product) {
        return SingleProductWidget(product: product, key: new Key("key"));
      }).toList());
        
  }
}