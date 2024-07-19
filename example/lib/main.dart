import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This is an example app which make use of
  /// `SignInButtonBuilder` and `SignInButton` class
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const Scaffold(
        backgroundColor: Color.fromRGBO(50, 50, 50, 1.0),
        body: SignInPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  /// Show a simple "___ Button Pressed" indicator
  void _showButtonPressDialog(BuildContext context, String provider) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: const Duration(milliseconds: 400),
    ));
  }

  /// Normally the signin buttons should be contained in the SignInPage
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SignInButtonBuilder(
            text: 'Get going with Email',
            icon: Icons.email,
            onPressed: () {
              _showButtonPressDialog(context, 'Email');
            },
            backgroundColor: Colors.blueGrey[700]!,
            width: 220.0,
          ),
          const Divider(),
          SignInButton(
            Buttons.Google,
            onPressed: () {
              _showButtonPressDialog(context, 'Google');
            },
          ),
          const Divider(),
          SignInButton(
            Buttons.GoogleDark,
            onPressed: () {
              _showButtonPressDialog(context, 'Google (dark)');
            },
          ),
          const Divider(),
          SignInButton(
            Buttons.FacebookNew,
            onPressed: () {
              _showButtonPressDialog(context, 'FacebookNew');
            },
          ),
          const Divider(),
          SignInButton(
            Buttons.Apple,
            onPressed: () {
              _showButtonPressDialog(context, 'Apple');
            },
          ),
          const Divider(),
          SignInButton(
            Buttons.GitHub,
            text: 'Sign up with GitHub',
            onPressed: () {
              _showButtonPressDialog(context, 'Github');
            },
          ),
          const Divider(),
          SignInButton(
            Buttons.Microsoft,
            text: 'Sign up with Microsoft ',
            onPressed: () {
              _showButtonPressDialog(context, 'Microsoft ');
            },
          ),
          const Divider(),
          SignInButton(
            Buttons.Twitter,
            text: 'Use Twitter',
            onPressed: () {
              _showButtonPressDialog(context, 'Twitter');
            },
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              SignInButton(
                Buttons.Facebook,
                mini: true,
                onPressed: () {
                  _showButtonPressDialog(context, 'Facebook (mini)');
                },
              ),
              SignInButtonBuilder(
                icon: Icons.email,
                text: 'Ignored for mini button',
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
    );
  }
}
