class ProductResponse {
  int id = 0;
  String name = '';
  String brand = '';
  String thumbnail = '';
  CityResponse city = CityResponse(0, '');
  double price = 0.0;
  double rating  = 0.0;

  ProductResponse(
    this.id,
    this.name,
    this.brand,
    this.thumbnail,
    this.city,
    this.price,
    this.rating,
  );

  ProductResponse.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    brand = json['brand'];
    thumbnail = json['thumbnail'];
    city = json['city'];
    price = json['price'];
    rating = json['rating'];
  }
}


class CityResponse {
  int id = 0;
  String name = '';

  CityResponse(
    this.id,
    this.name
  );

  CityResponse.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
}