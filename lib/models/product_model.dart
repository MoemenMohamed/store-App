class ProductModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(json) {
    return ProductModel(
        id: json['id'],
        image: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        category: json['category'],
        rating: RatingModel.fromJson(json['rating']));
  }
}

class RatingModel {
  double rate;
  int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(json) {
    return RatingModel(rate: json['rate'], count: json['count']);
  }
}
