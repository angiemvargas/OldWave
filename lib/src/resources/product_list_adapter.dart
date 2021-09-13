import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/models/repository/product_list_repository.dart';
import 'package:oldwave/src/network_provider/product_list_service.dart';

class ProductListAdapter implements ProductListRepository {

  final ProductListService service = ProductListService();

  @override
  List<Product> getProductListByProduct(String product){
    
    List<Product> product = List.empty();






    return product;
  }
}