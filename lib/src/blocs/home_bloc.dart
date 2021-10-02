

import 'package:oldwave/src/blocs/provider/bloc.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/use_case/product_list_usecase.dart';

class HomeBloc with Bloc {
  
  final ProductListUseCase _productListUseCase;

  HomeBloc(this._productListUseCase);

  Future<List<Product>> getProductListByProduct(String product) {
    return _productListUseCase.getProductListByProduct(product);
  }

  @override
  void dispose() {
    
  }

}
