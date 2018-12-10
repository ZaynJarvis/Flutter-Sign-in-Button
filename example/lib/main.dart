import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// This is an example app which make use of
  /// `SignInButtonBuilder` and `SignInButton` class
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: SignInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignInPage extends StatelessWidget {
  /// Normally the signin buttons should be contained in the SignInPage
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
              signInText: "Get going with",
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
                  icon: Icons.email,
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
