import 'package:flutter/material.dart';

import 'model/data.dart';
import 'model/product_item.dart';

import 'supplemental/product_list.dart';
import 'detail.dart';
import 'values/colors.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsetsDirectional.only(top: 30.0, bottom: 10.0),
        child: ProductList(products: getProducts())
      )
    );
  }
}

class BackPage extends StatelessWidget {
  final GestureTapCallback onTap;
  final ProductItem productItem;

  const BackPage({
    Key key,
    this.onTap,
    this.productItem
  })  : assert(productItem != null);

  @override
  Widget build(BuildContext context) {
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start;
    TextAlign textAlign = TextAlign.left;

    if (productItem.id % 2 == 0) {
      crossAxisAlignment = CrossAxisAlignment.end;
      textAlign = TextAlign.right;
    } else {
      crossAxisAlignment = CrossAxisAlignment.start;
      textAlign = TextAlign.left;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: themePrimary,
          padding: EdgeInsets.all(36.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                    crossAxisAlignment: crossAxisAlignment,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          productItem.title.replaceAll(' ', '\n'),
                          textAlign: textAlign,
                          style: TextStyle(fontSize: 52.0)
                      ),
                      SizedBox(height: 12.0),
                      Container(
                        width: 120.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(
                                        productItem: productItem
                                    ),
                              ),
                            );
                          },
                          child: Text('BUY'),
                        ),
                      )
                    ]
                ),
              )
            ],
          )
      ),
    );
  }
}