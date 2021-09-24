import 'package:oldwave/src/resources/dtos/product_response.dart';

class DetailProductResponse {
  SellerDetailResponse seller = SellerDetailResponse(0, '');

  int id = 0;
  String name = '';

  DetailProductResponse(
    this.id,
    this.name,
    this.seller
  );

  DetailProductResponse.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    seller = new SellerDetailResponse.fromJson(json['seller']); 
  }
}

class SellerDetailResponse {
  int id = 0;
  String name = '';

  SellerDetailResponse(
    this.id,
    this.name
  );

  SellerDetailResponse.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
}