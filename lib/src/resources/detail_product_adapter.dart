import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/models/repository/detail_product_repository.dart';
import 'package:oldwave/src/network_provider/constant.dart';
import 'package:oldwave/src/network_provider/detail_product_service.dart';

class DetailProductAdapter implements DetailProductRepository {

  final DetailProductService service = DetailProductService();

  @override
  Future<DetailProduct> getDetailProductById(String idProduct,  String idSeller) async {

    DetailProduct product = DetailProduct(0, '', '', List.empty(), City(0, ''), 0.0, 0.0, '', SellerWithLogo(0, '', ''));

    // asumimos que fast api tiene id de seller 1, pendiente de confirmar
    if(idSeller == '1'){
      product = await service.getDetailProduct(Constant.url_back_fast_api, idProduct);
    }
    // asumimos que spring tiene id de seller 2, pendiente de confirmar
    if(idSeller == '2'){
      product = await service.getDetailProduct(Constant.url_back_spring_boot, idProduct);
    }
    // asumimos que flask tiene id de seller 3, pendiente de confirmar
    if(idSeller == '3'){
      product = await service.getDetailProduct(Constant.url_back_flask, idProduct);
    }

    return product;

  }



}