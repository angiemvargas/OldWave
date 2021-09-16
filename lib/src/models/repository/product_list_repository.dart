import 'package:oldwave/src/models/product.dart';

mixin ProductListRepository {
  Future<List<Product>> getProductListByProduct(String product);
}