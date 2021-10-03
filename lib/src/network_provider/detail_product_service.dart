import 'dart:convert';

import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/network_provider/constant.dart';
import 'package:oldwave/src/network_provider/rest_client_service.dart';

class DetailProductService {
  RestClientService restClientService = RestClientService();

  Future<DetailProduct> getDetailProduct(String baseUrl, int idProduct) async {
    String aux;

    if (baseUrl == Constant.url_back_fast_api) {
      aux = '/api/v1/items/';
    } else {
      aux = Constant.path_detail_product;
    }
    var uri = Uri.http(baseUrl, aux + "$idProduct");
    //var uri = Uri.https(baseUrl, Constant.path_detail_product+idProduct);
    GenericResponse response = await restClientService.get(uri);
    return _detailProductResponseFromJson(
        (response.statusCode == 0) ? response.data : null);
  }

  DetailProduct _detailProductResponseFromJson(json) {
    DetailProduct response;

    if (json != null) {
      response = DetailProduct.fromJson(jsonDecode(json));
    } else {
      response = DetailProduct(0, '', '', List.empty(), City(0, ''), 0.0, 0.0,
          '', SellerWithLogo(0, '', ''));
    }

    return response;
  }
}
