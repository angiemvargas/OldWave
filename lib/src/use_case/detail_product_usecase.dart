
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/repository/detail_product_repository.dart';
import 'package:oldwave/src/resources/detail_product_adapter.dart';

class DetailProductUseCase {

  final DetailProductRepository repository = DetailProductAdapter();

  Future<DetailProduct> getDetailProductById(int idProduct, int idSeller) {
    return repository.getDetailProductById(idProduct, idSeller);
  }
}