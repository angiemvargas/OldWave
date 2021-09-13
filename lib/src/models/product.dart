class Product {
  int id;
  String name;
  String brand;
  String thumbnail;
  City city;
  double price;
  double rating;
  Seller seller;

  Product(
    this.id,
    this.name,
    this.brand,
    this.thumbnail,
    this.city,
    this.price,
    this.rating,
    this.seller,
  );
}

class City {
  int id;
  String name;

  City(
    this.id,
    this.name
  );
}

class Seller {
  int id;
  String name;

  Seller(
    this.id,
    this.name
  );
}