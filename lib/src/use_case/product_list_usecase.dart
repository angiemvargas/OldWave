import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/models/repository/product_list_repository.dart';
import 'package:oldwave/src/resources/product_list_adapter.dart';

class ProductListUseCase {

  final ProductListRepository repository = ProductListAdapter();

  Future<List<Product>> getProductListByProduct(String product) {
    return repository.getProductListByProduct(product);
  }
}