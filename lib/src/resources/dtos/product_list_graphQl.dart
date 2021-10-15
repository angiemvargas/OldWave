class ProductListGraphQL {
  SearchGraphQl data = SearchGraphQl(ProductListGraphQLResponse('', 0, List.empty(), SellerGraphQLResponse('0', '')));

  ProductListGraphQL(
    this.data
  );

  ProductListGraphQL.fromJson(Map<String, dynamic> json){
    data = new SearchGraphQl.fromJson(json['data']);
  }
}

class SearchGraphQl {
  ProductListGraphQLResponse search = ProductListGraphQLResponse('', 0, List.empty(), SellerGraphQLResponse('0', ''));

  SearchGraphQl(
    this.search
  );

  SearchGraphQl.fromJson(Map<String, dynamic> json){
    search = new ProductListGraphQLResponse.fromJson(json['search']);
  }
}

class ProductListGraphQLResponse {
  String query = '';
  int total = 0;
  List<ProductGraphQLResponse> items = <ProductGraphQLResponse>[];
  SellerGraphQLResponse seller = SellerGraphQLResponse('0', '');

  ProductListGraphQLResponse(
    this.query,
    this.total,
    this.items,
    this.seller,
  );

  ProductListGraphQLResponse.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    total = json['total'];
    json['items'].forEach((v) => items.add(new ProductGraphQLResponse.fromJson(v)));
    seller = new SellerGraphQLResponse.fromJson(json['seller']);
  }
}

class SellerGraphQLResponse {
  String id = '0';
  String name = '';

  SellerGraphQLResponse(
    this.id,
    this.name,
  );

  SellerGraphQLResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

class ProductGraphQLResponse {
  String id = '0';
  String name = '';
  String brand = '';
  String thumbnail = '';
  CityGraphQlResponse city = CityGraphQlResponse('0', '');
  double price = 0.0;
  double rating = 0.0;

  ProductGraphQLResponse(
    this.id,
    this.name,
    this.brand,
    this.thumbnail,
    this.city,
    this.price,
    this.rating,
  );

  ProductGraphQLResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    brand = json['brand'];
    thumbnail = json['thumbnail'];
    city = json['city'] == null
        ? CityGraphQlResponse('0', 'unkonw city')
        : CityGraphQlResponse.fromJson(json['city']);
    price = json['price'];
    rating = json['rating'];
  }
}

class CityGraphQlResponse {
  String id = '0';
  String name = '';

  CityGraphQlResponse(
    this.id,
    this.name,
  );

  CityGraphQlResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

