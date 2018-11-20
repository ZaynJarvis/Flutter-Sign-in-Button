import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Buttons {
  Email,
  Google,
  Facebook,
  GitHub,
  LinkedIn,
  Pinterest,
  Tumblr,
}

@immutable
class SignInButtonBuilder extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color textColor, backgroundColor;
  final Function onPressed;
  final EdgeInsets padding;
  final bool mini;
  final double elevation;

  SignInButtonBuilder({
    @required this.icon,
    @required this.backgroundColor,
    @required this.onPressed,
    this.title = '',
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.all(3.0),
    this.mini = false,
    this.elevation = 2.0,
  })  : assert(title != null),
        assert(icon != null),
        assert(textColor != null),
        assert(backgroundColor != null),
        assert(onPressed != null),
        assert(mini != null),
        assert(elevation != null);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: mini ? 35.0 : null,
      elevation: elevation,
      padding: padding,
      color: backgroundColor,
      onPressed: onPressed,
      child: mini
          ? Container(
              width: 35.0,
              height: 35.0,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            )
          : Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width / 1.5,
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 20),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Sign in with $title",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

class SignInButton extends StatelessWidget {
  final Function onPressed;
  final Buttons button;
  final bool mini;
  SignInButton(this.button, {@required this.onPressed, this.mini = false})
      : assert(button != null),
        assert(onPressed != null);

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Email:
        return SignInButtonBuilder(
          title: 'Email',
          icon: Icons.email,
          onPressed: () {},
          backgroundColor: Colors.grey[700],
        );
      case Buttons.Google:
        return SignInButtonBuilder(
          mini: mini,
          title: 'Google',
          icon: FontAwesomeIcons.google,
          backgroundColor: Color(0xFFDD4B39),
          onPressed: onPressed,
        );
      case Buttons.Facebook:
        return SignInButtonBuilder(
          mini: mini,
          title: 'Facebook',
          icon: FontAwesomeIcons.facebookF,
          backgroundColor: Color(0xFF3B5998),
          onPressed: onPressed,
        );
      case Buttons.GitHub:
        return SignInButtonBuilder(
          mini: mini,
          title: 'GitHub',
          icon: FontAwesomeIcons.github,
          backgroundColor: Color(0xFF444444),
          onPressed: onPressed,
        );
      case Buttons.LinkedIn:
        return SignInButtonBuilder(
          mini: mini,
          title: 'LinkedIn',
          icon: FontAwesomeIcons.linkedinIn,
          backgroundColor: Color(0xFF007BB6),
          onPressed: onPressed,
        );
      case Buttons.Pinterest:
        return SignInButtonBuilder(
          mini: mini,
          title: 'Pinterest',
          icon: FontAwesomeIcons.pinterest,
          backgroundColor: Color(0xFFCB2027),
          onPressed: onPressed,
        );
      case Buttons.Tumblr:
        return SignInButtonBuilder(
          mini: mini,
          title: 'Tumblr',
          icon: FontAwesomeIcons.tumblr,
          backgroundColor: Color(0xFF34526f),
          onPressed: onPressed,
        );
      default:
        return SignInButtonBuilder(
          title: 'Email',
          icon: Icons.email,
          onPressed: () {},
          backgroundColor: Colors.grey[700],
        );
    }
  }
}
