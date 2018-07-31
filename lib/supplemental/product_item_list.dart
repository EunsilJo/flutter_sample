import 'package:flutter/material.dart';

import '../model/product_item.dart';
import 'product_item_card.dart';
import '../detail.dart';

class ProductItemList extends StatelessWidget {
  final String title;
  final List<ProductItem> productsItems;

  ProductItemList({
    Key key, this.title,
    this.productsItems
  }) : super(key: key);

  List<Container> _buildColumns(BuildContext context) {
    if (productsItems == null || productsItems.isEmpty) {
      return <Container>[];
    }
    Widget column;
    return List.generate(productsItems.length, (int index) {
      if (productsItems[index].category == Category.hashtag) {
        column = HashtagItemCard(
          onTap: () {},
          productItem: productsItems[index]
        );
      } else {
        column = ProductItemCard(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetailPage(
                        productItem: productsItems[index]
                    ),
              ),
            );
          },
          productItem: productsItems[index],
        );
      }
      return Container(
        margin: EdgeInsetsDirectional.only(end: 16.0),
        child: column,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    double _height = 0.0;

    if (productsItems[0].category == Category.hashtag) {
      _height = 138.0;
    } else {
      _height = 340.0;
    }

    return Container(
      height: _height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
              title, style: themeData.primaryTextTheme.headline,
          ),
          SizedBox(height: 18.0),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _buildColumns(context),
            ),
          ),
          SizedBox(height: 12.0)
        ],
      ),
    );
  }
}