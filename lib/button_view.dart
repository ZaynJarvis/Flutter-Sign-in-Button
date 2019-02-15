import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInButton extends StatelessWidget {
  /// Here are the buttons builder which integrate with button builder
  /// and the buttons list.
  ///
  /// The `SignInButton` class already contains general used buttons.
  /// In case of other buttons, user can always use `SignInButtonBuilder`
  /// to build the signin button.

  /// onPressed function should be passed in as a required field.
  final Function onPressed;

  /// button should be used from the enum class `Buttons`
  final Buttons button;

  /// mini is a boolean field which specify whether to use a square mini button.
  final bool mini;

  /// The constructor is fairly self-explanatory.
  SignInButton(this.button, {@required this.onPressed, this.mini = false})
      : assert(button != null),
        assert(onPressed != null);

  /// The build funtion is used to build the widget which will switch to
  /// desired widget based on the enum class `Buttons`
  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Email:
        return SignInButtonBuilder(
          key: ValueKey("Email"),
          mini: mini,
          title: 'Email',
          icon: Icons.email,
          onPressed: onPressed,
          backgroundColor: Colors.grey[700],
        );
      case Buttons.Google:
        return SignInButtonBuilder(
          key: ValueKey("Google"),
          mini: mini,
          title: 'Google',
          icon: FontAwesomeIcons.google,
          backgroundColor: Color(0xFFDD4B39),
          onPressed: onPressed,
        );
      case Buttons.GoogleDark:
        return SignInButtonBuilder(
          key: ValueKey("Google"),
          mini: mini,
          title: 'Google',
          icon: FontAwesomeIcons.google,
          backgroundColor: Color(0xFF4285F4),
          textColor: Color(0xFFFFFFFF),
          onPressed: onPressed,
        );
      case Buttons.Facebook:
        return SignInButtonBuilder(
          key: ValueKey("Facebook"),
          mini: mini,
          title: 'Facebook',
          icon: FontAwesomeIcons.facebookF,
          backgroundColor: Color(0xFF3B5998),
          onPressed: onPressed,
        );
      case Buttons.GitHub:
        return SignInButtonBuilder(
          key: ValueKey("GitHub"),
          mini: mini,
          title: 'GitHub',
          icon: FontAwesomeIcons.github,
          backgroundColor: Color(0xFF444444),
          onPressed: onPressed,
        );
      case Buttons.LinkedIn:
        return SignInButtonBuilder(
          key: ValueKey("LinkedIn"),
          mini: mini,
          title: 'LinkedIn',
          icon: FontAwesomeIcons.linkedinIn,
          backgroundColor: Color(0xFF007BB6),
          onPressed: onPressed,
        );
      case Buttons.Pinterest:
        return SignInButtonBuilder(
          key: ValueKey("Pinterest"),
          mini: mini,
          title: 'Pinterest',
          icon: FontAwesomeIcons.pinterest,
          backgroundColor: Color(0xFFCB2027),
          onPressed: onPressed,
        );
      case Buttons.Tumblr:
        return SignInButtonBuilder(
          key: ValueKey("Tumblr"),
          mini: mini,
          title: 'Tumblr',
          icon: FontAwesomeIcons.tumblr,
          backgroundColor: Color(0xFF34526f),
          onPressed: onPressed,
        );
      default:
        return SignInButtonBuilder(
          key: ValueKey("Email"),
          title: 'Email',
          icon: Icons.email,
          onPressed: () {},
          backgroundColor: Colors.grey[700],
        );
    }
  }
}
