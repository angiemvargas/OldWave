

import 'package:oldwave/src/resources/product_list_adapter.dart';
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

  ProductListUseCase provideLoginUseCase() {
    return ProductListUseCase();
  }
}
