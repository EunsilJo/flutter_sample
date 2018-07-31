import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'values/strings.dart';

class JJOApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: HomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute
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