import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/models/repository/product_list_repository.dart';
import 'package:oldwave/src/network_provider/constant.dart';
import 'package:oldwave/src/network_provider/product_list_service.dart';
import 'package:oldwave/src/resources/dtos/product_list_response.dart';
import 'package:oldwave/src/resources/dtos/product_response.dart';

class ProductListAdapter implements ProductListRepository {
  final ProductListService service = ProductListService();

  @override
  Future<List<Product>> getProductListByProduct(String product) async {
    List<Product> productList = <Product>[];

    ProductListResponse fastapi =
        await service.getProductList(Constant.url_back_fast_api, product);

    ProductListResponse graphQl =
         await service.getProductList('', product);

    ProductListResponse flask =
        await service.getProductList(Constant.url_back_flask, product);

    if (fastapi.total != 0) {
      fastapi.items.forEach((element) {
        productList
            .add(mapperProductResponseToProduct(element, fastapi.seller));
      });
    }

    if (graphQl.total != 0) {
      graphQl.items.forEach((element) {
        productList
            .add(mapperProductResponseToProduct(element, graphQl.seller));
      });
    }

    if (flask.total != 0) {
      flask.items.forEach((element) {
        productList.add(mapperProductResponseToProduct(element, flask.seller));
      });
    }

    return productList;
  }

  Product mapperProductResponseToProduct(
      ProductResponse productResponse, SellerResponse sellerResponse) {
    return new Product(
      productResponse.id,
      productResponse.name,
      productResponse.brand,
      productResponse.thumbnail,
      mapperCityResponseToCity(productResponse.city),
      productResponse.price,
      productResponse.rating,
      mapperSellerResponsetoSeller(sellerResponse),
    );
  }

  City mapperCityResponseToCity(CityResponse cityResponse) {
    return new City(cityResponse.id, cityResponse.name);
  }

  Seller mapperSellerResponsetoSeller(SellerResponse sellerResponse) {
    return new Seller(sellerResponse.id, sellerResponse.name);
  }
}
