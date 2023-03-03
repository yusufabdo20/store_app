class ProductstsModel {
  int? id;
  String? title;
  double? price;
  String? description;
  // String? category;
  String? image;
  Rating? rating;

  ProductstsModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      // required this.category,
      required this.image,
      required this.rating});


  factory ProductstsModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductstsModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: Rating.fromJson(jsonData['rating']),
    );
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['price'] = this.price;
  //   data['description'] = this.description;
  //   // data['category'] = this.category;
  //   data['image'] = this.image;
  //   // if (this.rating != null) {
  //   //   data['rating'] = this.rating!.toJson();
  //   // }
  //   return data;
  // }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      count: json['count'],
      rate: json['rate'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['rate'] = this.rate;
  //   data['count'] = this.count;
  //   return data;
  // }
}
