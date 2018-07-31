import 'package:flutter/material.dart';

import '../model/product_item.dart';
import '../detail.dart';

class ProductItemCard extends StatelessWidget {
  final GestureTapCallback onTap;
  final double imageAspectRatio;
  final ProductItem productItem;

  ProductItemCard({
    this.imageAspectRatio: 130.0 / 195.0,
    this.onTap,
    this.productItem
  }) : assert(imageAspectRatio == null || imageAspectRatio > 0);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    final imageWidget = Image.asset(
      productItem.assetPath,
      fit: BoxFit.cover,
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(0.0),
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(const Radius.circular(0.0))
              ),
              child: Container(
                width: 130.0,
                height: 195.0,
                child: AspectRatio(
                  aspectRatio: imageAspectRatio,
                  child: imageWidget,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              productItem.title.toUpperCase(),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: theme.textTheme.subhead,
            ),
            SizedBox(height: 3.0),
            Text(
              productItem.subTitle,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: theme.textTheme.body1,
            ),
          ],
        ),
      ),
    );
  }
}

class HashtagItemCard extends StatelessWidget {
  HashtagItemCard({this.onTap, this.productItem});

  final GestureTapCallback onTap;
  final ProductItem productItem;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<Color> _colors = <Color>[];
    if (productItem.id % 2 == 0) {
      _colors = <Color>[Color(0xFF5671E4), Color(0xFFDF44EA)];
    } else {
      _colors = <Color>[Color(0xFF65F1D1), Color(0xFFBAF8C6)];
    }

    return Container(
      width: 195.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(5.0)), //TODO
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: _colors
        ),
      ),
      child: Center(
        child: Text(
          '# ${productItem.hashtag}',
          style: theme.accentTextTheme.headline,
        ),
      ),
    );
  }
}