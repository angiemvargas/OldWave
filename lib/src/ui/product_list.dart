import 'package:flutter/material.dart';
import 'package:oldwave/src/blocs/product_list_bloc.dart';
import 'package:oldwave/src/models/detail_parameters.dart';
import 'package:oldwave/src/ui/details_screen.dart';
import 'widgets/products.dart';
import 'widgets/nav_bar.dart';
import 'widgets/search.dart';
import 'package:oldwave/src/di/injector.dart';
import 'base_state.dart';
import 'package:oldwave/src/models/product.dart';


class ProductList extends StatefulWidget {
  final List<Product> list;
  
  ProductList({required this.list});

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends BaseState<ProductList, ProductListBloc> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        body:  SingleChildScrollView(
          child: Column(
            children: [
            SafeArea(
              child: NavBar(),
            ),
            Search(onService: _serviceNewProduct),
            ...{if (widget.list.length != 0) SizedBox(
                height: MediaQuery.of(context).size.height - 90, // constrain height
                child: ProductsWidget(products: widget.list, onService: _service,),
              ) else Text("No se encontraron productos disponibles")
            },
          ],
            
          )
        ));
  }

  void _serviceNewProduct(String valor) {
    bloc!.getProductListByProduct(valor).then((productList) {
      Navigator.of(context)
      .push(MaterialPageRoute(
        builder: (context) => ProductList(list: productList)));
    }).catchError((error) => print(error));
  }

  void _service(DetailParameters detailParameters) {
    bloc!.getDetailPrductById(detailParameters.idProduct, detailParameters.idSeller).then((detail) {
      Navigator.of(context)
      .push(MaterialPageRoute(
        builder: (context) => DetailScreen(detailProduct: detail )));
    }).catchError((error) => print(error));
  }

  @override
  ProductListBloc getBlocInstance() {
    return ProductListBloc(
      Injector().providerDetailProductUseCase(),
      Injector().provideProductListUseCase()
    );
  }

}

