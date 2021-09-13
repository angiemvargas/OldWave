import 'package:http/http.dart' as http;
import 'package:oldwave/src/network_provider/rest_client_service.dart';
import 'package:oldwave/src/resources/dtos/product_list_response.dart';

class ProductListService {

  RestClientService restClientService = RestClientService() ;
  final String PATH = '/api/search'; 

  Future<ProductListResponse> getProductList(String baseUrl, String product) async {
    var uri = '${PATH}?q=${product}';
    GenericResponse response = await restClientService.get(baseUrl, uri);
    return _productListResponseFromJson((response.statusCode == 0) ? response.data : null);
  }

  ProductListResponse _productListResponseFromJson(json) {

    ProductListResponse response;

    if(json != null){
      response = ProductListResponse.fromJson(json);
    } else {
      response = ProductListResponse('', 0, List.empty(), SellerResponse(0, '')); 
    }

    return response;
  }
}
