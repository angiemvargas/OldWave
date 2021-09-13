import 'package:oldwave/src/models/product.dart';

mixin ProductListRepository {
  List<Product> getProductListByProduct(String product);
}