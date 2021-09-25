import 'package:oldwave/src/blocs/provider/bloc.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/use_case/detail_product_usecase.dart';
import 'package:oldwave/src/use_case/product_list_usecase.dart';

class Detailproductbloc with Bloc {
  
  final DetailProductUseCase _detailProductUseCase;
  Detailproductbloc(this._detailProductUseCase);
  
  Future<DetailProduct> getDetailPrductById(String idProduct, String idSeller){
    return _detailProductUseCase.getDetailProductById(idProduct, idSeller);
  }
  @override
  void dispose() {

    }
}