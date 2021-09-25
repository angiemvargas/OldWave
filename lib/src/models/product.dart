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

  @override
  String toString() {
    return "(id: $id, name: $name, brand: $brand, thumbnail: $thumbnail, city: $city , price: $price, rating: $rating, seller: ${seller.name})";
  }
}

class City {
  int id = 0;
  String name = '';

  City(
    this.id,
    this.name,
  );

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

class Seller {
  int id;
  String name;

  Seller(
    this.id,
    this.name,
  );
}
