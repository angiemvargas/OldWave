import 'dart:convert';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oldwave/src/network_provider/constant.dart';
import 'package:oldwave/src/network_provider/graphql_service.dart';
import 'package:oldwave/src/network_provider/rest_client_service.dart';
import 'package:oldwave/src/resources/dtos/product_list_graphQl.dart';
import 'package:oldwave/src/resources/dtos/product_list_response.dart';

class ProductListService {
  RestClientService restClientService = RestClientService();
  GraphQlService graphQlService = GraphQlService();

  Future<ProductListResponse> getProductList(String baseUrl, String product) {
    if(baseUrl == ''){
      return _isServiceGraphQl(product);
    } else {
      return _isServiceRest(baseUrl, product);
    }
  }

  Future<ProductListResponse> _isServiceGraphQl(String product) async {
    String queryProductList = ''' {
      search(name: "$product") {
        query
        total
        items {
          id
          name
          brand
          thumbnail
          city {
            id
            name
          }
          price
          rating
        }
        seller {
          id
          name
        }
      }
    } ''';

    QueryResult response = await graphQlService.graphQlService(queryProductList);
    return _productListGraphQlResponseFromJson(response.data);

  }

  Future<ProductListResponse> _isServiceRest(String baseUrl, String product) async {
    String aux;
    if (baseUrl == Constant.url_back_fast_api) {
      aux = '/api/v1/search';
    } else {
      aux = Constant.path_product_list;
    }
    var uri = Uri.http(baseUrl, aux, {'q': product});
    GenericResponse response = await restClientService.get(uri);
    return _productListResponseFromJson(
        (response.statusCode == 0) ? response.data : null);
  }

  ProductListResponse _productListResponseFromJson(json) {
    ProductListResponse response;

    if (json != null) {
      response = ProductListResponse.fromJson(jsonDecode(json));
    } else {
      response =
          ProductListResponse('', 0, List.empty(), SellerResponse(0, ''));
    }

    return response;
  }

  ProductListResponse _productListGraphQlResponseFromJson(json) {
    ProductListGraphQL response;

    if (json != null) {
      final userdata = new Map<String, dynamic>.from(jsonDecode(json['search']));
      //response = ProductListGraphQL.fromJson(jsonDecode(json));
    } else {
      response = ProductListGraphQL(SearchGraphQl(ProductListGraphQLResponse('', 0, List.empty(), SellerGraphQLResponse('0', ''))));
    }
    return ProductListResponse('', 0, List.empty(), SellerResponse(0, ''));
//    return response.data.search;
  }
}
