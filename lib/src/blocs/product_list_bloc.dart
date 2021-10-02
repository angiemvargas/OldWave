import 'package:oldwave/src/blocs/provider/bloc.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/use_case/detail_product_usecase.dart';

class ProductListBloc with Bloc {

  final DetailProductUseCase _detailProductUseCase;
  
  ProductListBloc(this._detailProductUseCase);

  Future<DetailProduct> getDetailPrductById(int idProduct, int idSeller) {
    return _detailProductUseCase.getDetailProductById(idProduct, idSeller);
  }

  @override
  void dispose() {}
}