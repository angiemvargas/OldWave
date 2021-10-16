import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/models/repository/detail_product_repository.dart';
import 'package:oldwave/src/network_provider/constant.dart';
import 'package:oldwave/src/network_provider/detail_product_service.dart';

class DetailProductAdapter implements DetailProductRepository {
  final DetailProductService service = DetailProductService();

  @override
  Future<DetailProduct> getDetailProductById(
      int idProduct, int idSeller) async {
    DetailProduct product = DetailProduct(0, '', '', List.empty(), City(0, ''),
        0.0, 0.0, '', SellerWithLogo(0, '', ''));

    if (idSeller == 7) {
      product =
          await service.getDetailProduct(Constant.url_back_fast_api, idProduct);
    }
    
    if (idSeller == 1) {
      product =
          await service.getDetailProduct(Constant.url_back_flask, idProduct);
    }

    return product;
  }
}
