import 'package:flutter/foundation.dart';

enum Category { all, blouse, knit, jacket, skirt, other, hashtag }

class ProductItem {
  const ProductItem({
    @required this.category,
    @required this.id,
    @required this.imageName,
    @required this.title,
    @required this.subTitle,
    @required this.description,
    @required this.price,
    @required this.gender,
    @required this.size,
    @required this.modelSize,
    @required this.hashtag
  })  : assert(category != null),
        assert(id != null),
        assert(title != null),
        assert(subTitle != null),
        assert(description != null),
        assert(price != null),
        assert(gender != null),
        assert(size != null),
        assert(modelSize != null),
        assert(hashtag != null);

  final Category category;
  final int id;
  final String imageName;
  final String title;
  final String subTitle;
  final String description;
  final int price;
  final String gender;
  final String size;
  final String modelSize;
  final String hashtag;

  String get assetPath => 'images/product/$imageName.jpg';

  @override
  String toString() => "$title (id=$id)";
}