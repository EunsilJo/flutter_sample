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
    final ThemeData theme = Theme.of(context);
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
                            Text(
                                productItem.title,
                                style: theme.primaryTextTheme.headline,
                            ),
                            SizedBox(height: 48.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                    formatter.format(productItem.price),
                                    style: theme.textTheme.display1,
                                ),
                                Text(
                                    '원',
                                    style: theme.textTheme.title,
                                )
                              ],
                            ),
                            SizedBox(height: 24.0),
                            Text(
                                productItem.gender + '\n' +
                                '착용 모델 사이즈 : ${productItem.modelSize}' + '\n' +
                                '착용 사이즈 : ${productItem.size}' + '\n' +
                                '디테일 핏 : 루즈',
                                style: theme.textTheme.body2,
                            ),
                            SizedBox(height: 24.0),
                            Text(
                                productItem.description,
                                style: theme.textTheme.body2,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                RaisedButton(
                    onPressed: () {},
                    child: Text(
                        'BUY',
                        style: theme.accentTextTheme.button,
                    )
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