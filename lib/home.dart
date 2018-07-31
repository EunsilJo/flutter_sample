import 'package:flutter/material.dart';

import 'model/data.dart';
import 'supplemental/product_list.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ]
      ),
      body: Container(
        margin: EdgeInsetsDirectional.only(top: 12.0),
        child: ProductList(products: getProducts())
      )
    );
  }
}