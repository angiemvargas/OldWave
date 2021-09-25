import 'package:oldwave/src/resources/dtos/product_response.dart';

class DetailProductResponse {
  
  int id = 0;
  String name = '';
  String city = '';
  String brand = '';
  String thumbnail= '';
  String rating ="";
  String price = '';
  SellerDetailResponse seller = SellerDetailResponse(0, '');
  List<ProductResponse> images = <ProductResponse>[];

  DetailProductResponse(
    this.id,
    this.name,
    this.city,
    this.brand,
    this.thumbnail,
    this.rating,
    this.price,
    this.seller,
    this.images
  );

  DetailProductResponse.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    city= json['city'];
    brand = json['brand'];
    thumbnail = json['thumbnail'];
    rating= json['rating'];
    price = json['price'];
    seller = new SellerDetailResponse.fromJson(json['seller']);
    json['images'].forEach((v) => images.add(new ProductResponse.fromJson(v))); 
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