import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/ui/widgets/single_product.dart';
import 'package:oldwave/src/details/details_screen.dart';
import 'package:oldwave/src/ui/base_state.dart';

class ProductsWidget extends StatelessWidget {
  final Future<List<Product>> products;
  List<Product> list = [];

  ProductsWidget({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .63,
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 10,
        children: <Product>[
          Product(
              2,
              "Guitarra",
              "Gibson",
              "http://http2.mlstatic.com/D_983596-MCO41780205987_052020-I.jpg",
              new City(1, "Medellin"),
              125000.99,
              5,
              new Seller(1, "Karol")),
          Product(
              3,
              "Banjo",
              "Montañero",
              "http://http2.mlstatic.com/D_951532-MCO31083347507_062019-I.jpg",
              new City(1, "Medellin"),
              1000,
              5,
              new Seller(1, "Karol")),
          Product(
              4,
              "TV",
              "Samsung",
              "http://http2.mlstatic.com/D_804312-MLA44405465106_122020-I.jpg",
              new City(1, "Medellin"),
              5000000,
              5,
              new Seller(1, "Karol"))
        ].map((Product product) {
          // print(product);
          return SingleProductWidget(
              product: product,
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  )));
        }).toList());
  }

  void _service() {
    products.then((productList) {
      productList.forEach((element) {
        list.add(element);
      });
    }).catchError((error) => print(error));
  }
}
