import 'package:oldwave/src/resources/dtos/product_response.dart';

class ProductListResponse {
  String query;
  int total;
  List<ProductResponse> items;
  SellerResponse seller;

  ProductListResponse(
    this.query,
    this.total,
    this.items,
    this.seller
  );
}

class SellerResponse {
  int id;
  String name;

  SellerResponse(
    this.id,
    this.name
  );
}