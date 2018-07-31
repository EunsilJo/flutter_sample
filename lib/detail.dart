import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/product_item.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key key, this.imageAspectRatio: 360.0 / 295.0, this.productItem})
      : super(key: key);

  final ProductItem productItem;
  final double imageAspectRatio;

  @override
  Widget build(BuildContext context) {
    final NumberFormat formatter =  NumberFormat("#,###");

    final imageWidget = Image.asset(
      productItem.assetPath,
      fit: BoxFit.cover,
    );

    return Scaffold(
        appBar: AppBar(
            title: Text(productItem.hashtag.toUpperCase()),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )
        ),
        body: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.all(0.0),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(const Radius.circular(0.0))
                        ),
                        child: AspectRatio(
                          aspectRatio: imageAspectRatio,
                          child: imageWidget,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(productItem.title),
                            SizedBox(height: 24.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(formatter.format(productItem.price)),
                                Text('원')
                              ],
                            ),
                            SizedBox(height: 24.0),
                            Text(productItem.gender),
                            Text('착용 모델 사이즈 : ${productItem.modelSize}'),
                            Text('착용 사이즈 : ${productItem.size}'),
                            SizedBox(height: 24.0),
                            Text(productItem.description)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                RaisedButton(
                    onPressed: () {},
                    child: Text('BUY')
                ),
              ],
            ),
            Positioned(
              top: 16.0,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.favorite),
              ),
            )
          ],
        )
    );
  }
}