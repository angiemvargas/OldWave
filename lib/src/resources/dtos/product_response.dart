class ProductResponse {
  int id;
  String name;
  String brand;
  String thumbnail;
  CityResponse city;
  double price;
  double rating;

  ProductResponse(
    this.id,
    this.name,
    this.brand,
    this.thumbnail,
    this.city,
    this.price,
    this.rating,
  );
}


class CityResponse {
  int id;
  String name;

  CityResponse(
    this.id,
    this.name
  );
}