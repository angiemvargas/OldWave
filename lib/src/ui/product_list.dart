import 'package:flutter/material.dart';
import 'widgets/products.dart';
import 'widgets/nav_bar.dart';
import 'widgets/search.dart';
import 'package:oldwave/src/blocs/home_bloc.dart';
import 'package:oldwave/src/di/injector.dart';
import 'base_state.dart';
import 'package:oldwave/src/models/product.dart';


class ProductList extends StatefulWidget {
  
  const ProductList({ Key? key }) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends BaseState<ProductList, HomeBloc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        body:  SingleChildScrollView(
          child: Column(
            children: <Widget>[
            SafeArea(
              child: NavBar(),
            ),
            Search(),
            SizedBox(
              height: MediaQuery.of(context).size.height - 90, // constrain height
              child: ProductsWidget(products: bloc!.getProductListByProduct("iphone")),
            )

          ],
            
          )
        ));
  }

  void _service() {
    // List<Product> list= [];
    bloc!.getProductListByProduct("iphone").then((productList) {
      productList.forEach((element) {
        //list.add(element);
      });
    }).catchError((error) => print(error));
  }

  @override
  HomeBloc getBlocInstance() {
    return HomeBloc(
      Injector().provideProductListUseCase(),
      Injector().providerDetailProductUseCase(),
    );
  }

}

