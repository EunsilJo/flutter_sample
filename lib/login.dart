import 'package:flutter/material.dart';

import 'supplemental/custom_buttons.dart';
import 'values/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: themePrimary,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text('Sign up')
                )
              ],
            ),
            SizedBox(height: 100.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Login')
            ),
            SizedBox(height: 70.0,),
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