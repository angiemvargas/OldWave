import 'package:oldwave/src/resources/dtos/product_response.dart';

class ProductListResponse {
  String query = '';
  int total = 0;
  List<ProductResponse> items = List.empty();
  SellerResponse seller = SellerResponse(0, '');

  ProductListResponse(
    this.query,
    this.total,
    this.items,
    this.seller
  );

  ProductListResponse.fromJson(Map<String, dynamic> json){
    query = json['query'];
    total = json['total'];
    items = json['items'];
    seller = json['seller'];
  }
}

class SellerResponse {
  int id = 0;
  String name = '';

  SellerResponse(
    this.id,
    this.name
  );

  SellerResponse.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
}