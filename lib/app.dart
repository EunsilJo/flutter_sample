import 'package:flutter/material.dart';
import 'dart:math';

import 'model/product_item.dart';
import 'model/data.dart';

import 'home.dart';
import 'login.dart';
import 'backdrop.dart';
import 'values/strings.dart';
import 'values/themes.dart';

class JJOApp extends StatefulWidget {
  @override
  _JJOAppState createState() => _JJOAppState();
}

class _JJOAppState extends State<JJOApp> {

  ProductItem _productItem = getProductItems(Category.all)[Random().nextInt(24)];

  void _onProductTap() {
    setState(() {
      _productItem = getProductItems(Category.all)[Random().nextInt(24)];
    });
  }

  final ThemeData firstTheme = buildAppTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appName,
        home: Backdrop(
            frontLayer: HomePage(),
            backLayer: BackPage(
              onTap: _onProductTap,
              productItem: _productItem
            )
        ),
        initialRoute: '/login',
        onGenerateRoute: _getRoute,
        theme: firstTheme
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}