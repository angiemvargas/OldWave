import 'package:oldwave/src/blocs/provider/bloc.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/use_case/detail_product_usecase.dart';
import 'package:oldwave/src/use_case/product_list_usecase.dart';

class ProductListBloc with Bloc {

  final DetailProductUseCase _detailProductUseCase;
  final ProductListUseCase _productListUseCase;
  
  ProductListBloc(this._detailProductUseCase, this._productListUseCase);

  Future<DetailProduct> getDetailPrductById(int idProduct, int idSeller) {
    return _detailProductUseCase.getDetailProductById(idProduct, idSeller);
  }

  Future<List<Product>> getProductListByProduct(String product) {
    return _productListUseCase.getProductListByProduct(product);
  }

  @override
  void dispose() {}
}