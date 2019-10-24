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
  /// Show a simple "___ Button Pressed" dialog
  void _showButtonPressDialog(BuildContext context, String provider) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: Text('$provider button pressed'),
          actions: <Widget>[
            FlatButton(
              child: Text('Okay'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

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
              text: 'Get going with Email',
              icon: Icons.email,
              onPressed: () {
                _showButtonPressDialog(context, 'Email');
              },
              backgroundColor: Colors.blueGrey[700],
              width: 220.0,
            ),
            Divider(),
            SignInButton(
              Buttons.Google,
              onPressed: () {
                _showButtonPressDialog(context, 'Google');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.GoogleDark,
              onPressed: () {
                _showButtonPressDialog(context, 'Google (dark)');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Facebook,
              onPressed: () {
                _showButtonPressDialog(context, 'Facebook');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Apple,
              onPressed: () {
                _showButtonPressDialog(context, 'Apple');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Pinterest,
              text: "Sign up with Pinterest",
              onPressed: () {
                _showButtonPressDialog(context, 'Pinterest');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.GitHub,
              text: "Sign up with GitHub",
              onPressed: () {
                _showButtonPressDialog(context, 'Github');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Twitter,
              text: "Use Twitter",
              onPressed: () {
                _showButtonPressDialog(context, 'Twitter');
              },
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.Google,
                  mini: true,
                  onPressed: () {
                    _showButtonPressDialog(context, 'Google (mini)');
                  },
                ),
                SignInButton(
                  Buttons.LinkedIn,
                  mini: true,
                  onPressed: () {
                    _showButtonPressDialog(context, 'LinkedIn (mini)');
                  },
                ),
                SignInButton(
                  Buttons.Tumblr,
                  mini: true,
                  onPressed: () {
                    _showButtonPressDialog(context, 'Tumblr (mini)');
                  },
                ),
                SignInButtonBuilder(
                  icon: Icons.email,
                  text: "Ignored for mini button",
                  mini: true,
                  onPressed: () {
                    _showButtonPressDialog(context, 'Email (mini)');
                  },
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
