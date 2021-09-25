

import 'package:oldwave/src/models/product.dart';

class DetailProduct{
  int id = 0;
  String name = '';
  String brand = '';
  List<String> pictures = <String>[];
  City city = City(0, '');
  double price = 0.0;
  double rating  = 0.0;
  String description = '';
  SellerWithLogo seller = SellerWithLogo(0, '', '');

  DetailProduct(
    this.id,
    this.name,
    this.brand,
    this.pictures,
    this.city,
    this.price,
    this.rating,
    this.description,
    this.seller
  );

  DetailProduct.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    brand = json['brand'];
    json['pictures'].forEach((v) => pictures.add(v));
    city = new City.fromJson(json['city']);
    price = json['price'];
    rating = json['rating'];
    description = json['description'];
    seller = new SellerWithLogo.fromJson(json['seller']);
  }

}

class SellerWithLogo{
  int id = 0;
  String name = '';
  String logo = '';

  SellerWithLogo(
    this.id,
    this.name,
    this.logo
  );

  SellerWithLogo.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
  }
}