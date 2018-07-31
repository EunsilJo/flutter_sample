import 'package:flutter/material.dart';

import '../model/product.dart';
import 'product_item_list.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({
    Key key, this.products
  }) : super(key: key);

  List<Container> _buildRows(BuildContext context) {
    if (products == null || products.isEmpty) {
      return <Container>[];
    }
    return List.generate(products.length, (int index) {
      return Container(
        padding: EdgeInsetsDirectional.only(start: 12.0, bottom: 12.0),
        child: ProductItemList(
            title: products[index].title,
            productsItems: products[index].items
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: _buildRows(context),
      ),
    );
  }
}