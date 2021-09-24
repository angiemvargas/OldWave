

import 'package:oldwave/src/blocs/provider/bloc.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/use_case/detail_product_usecase.dart';
import 'package:oldwave/src/use_case/product_list_usecase.dart';

class HomeBloc with Bloc {
  
  final ProductListUseCase _productListUseCase;
  final DetailProductUseCase _detailProductUseCase;

  HomeBloc(this._productListUseCase, this._detailProductUseCase);

  Future<List<Product>> getProductListByProduct(String product) {
    return _productListUseCase.getProductListByProduct(product);
  }

  Future<DetailProduct> getDetailPrductById(String idProduct, String idSeller){
    return _detailProductUseCase.getDetailProductById(idProduct, idSeller);
  }

  @override
  void dispose() {
    
  }

}
