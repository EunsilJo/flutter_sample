import 'package:flutter/foundation.dart';

import 'product_item.dart';

class Product {
  const Product({
    @required this.title,
    @required this.items
  })  : assert(title != null),
        assert(items != null);

  final String title;
  final List<ProductItem> items;
}