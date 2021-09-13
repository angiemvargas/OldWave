import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oldwave/src/network_provider/constant.dart';
import 'package:oldwave/src/network_provider/rest_client_service.dart';
import 'package:oldwave/src/resources/dtos/product_list_response.dart';

class ProductListService {

  RestClientService restClientService = RestClientService() ;
  
  Future<ProductListResponse> getProductList(String baseUrl, String product) async {
    var uri = Uri.http(baseUrl, Constant.path_product_list, {'q': product});
    GenericResponse response = await restClientService.get(uri);
    return _productListResponseFromJson((response.statusCode == 0) ? response.data : null);
  }

  ProductListResponse _productListResponseFromJson(json) {

    ProductListResponse response;

    if(json != null){
      response = ProductListResponse.fromJson(jsonDecode(json));
    } else {
      response = ProductListResponse('', 0, List.empty(), SellerResponse(0, '')); 
    }

    return response;
  }
}
