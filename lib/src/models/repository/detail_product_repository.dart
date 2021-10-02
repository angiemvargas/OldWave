import 'package:oldwave/src/models/detail_product.dart';

mixin DetailProductRepository {
  Future<DetailProduct> getDetailProductById(int idProduct, int idSeller);
}