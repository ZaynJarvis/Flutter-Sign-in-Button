import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 50, 50, 1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SignInButtonBuilder(
              title: 'Email',
              icon: Icons.email,
              onPressed: () {},
              backgroundColor: Colors.blueGrey[700],
              width: 200.0,
            ),
            Divider(),
            SignInButton(
              Buttons.Google,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Facebook,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.GitHub,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Pinterest,
              onPressed: () {},
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.LinkedIn,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Tumblr,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButtonBuilder(
                  icon: Icons.account_balance,
                  mini: true,
                  onPressed: () {},
                  backgroundColor: Colors.cyan,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
