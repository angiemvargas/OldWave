import 'package:oldwave/src/use_case/detail_product_usecase.dart';
import 'package:oldwave/src/use_case/product_list_usecase.dart';

class Injector {
  static Injector? _singleton;

  factory Injector() {
    if (_singleton == null) {
      _singleton = Injector._();
    }
    return _singleton!;
  }

  Injector._();

  ProductListUseCase provideProductListUseCase() {
    return ProductListUseCase();
  }

  DetailProductUseCase providerDetailProductUseCase(){
    return DetailProductUseCase();
  }
}
