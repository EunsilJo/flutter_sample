import 'package:flutter/material.dart';

import 'supplemental/custom_buttons.dart';
import 'values/colors.dart';
import 'values/themes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Container(
        color: themePrimary,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                      'Sign up',
                      style: theme.primaryTextTheme.button
                  )
                )
              ],
            ),
            SizedBox(height: 120.0),
            SizedBox(
              height: 48.0,
              child: PrimaryColorOverride(
                color: firstThemeSecondary_50,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 48.0,
              child: PrimaryColorOverride(
                color: firstThemeSecondary_50,
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: buildButtonShapeBorder(),
                child: Text(
                    'Login',
                    style: theme.accentTextTheme.button
                )
            ),
            SizedBox(height: 70.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleImageButton(
                  onTap: () {},
                  image: Image.asset('images/ic_facebook.png'),
                  backgroundColor: Color(0xFF737AD9),
                ),
                SizedBox(width: 36.0),
                CircleImageButton(
                  onTap: () {},
                  image: Image.asset('images/ic_google.png'),
                  backgroundColor: Color(0xFFDE4646),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}