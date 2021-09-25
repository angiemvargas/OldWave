import 'package:flutter/material.dart';
import 'widgets/products.dart';
import 'widgets/nav_bar.dart';
import 'widgets/search.dart';
import 'package:oldwave/src/blocs/home_bloc.dart';
import 'package:oldwave/src/di/injector.dart';
import 'base_state.dart';

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
            FloatingActionButton(onPressed: _service),
            SizedBox(
              height: MediaQuery.of(context).size.height - 90, // constrain height
              child: ProductsWidget(),
            )

          ],
            
          )
        ));
  }

    void _service() {
    print(bloc!.getProductListByProduct("iphone"));
    // bloc!.getDetailPrductById('1', '3');
  }

  @override
  HomeBloc getBlocInstance() {
    return HomeBloc(
      Injector().provideProductListUseCase(),
      Injector().providerDetailProductUseCase(),
    );
  }

}

