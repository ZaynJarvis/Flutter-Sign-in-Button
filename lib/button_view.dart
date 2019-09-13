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

  /// shape is to specify the custom shape of the widget.
  final ShapeBorder shape;

  /// overrides the default button text
  final String text;

  /// The constructor is fairly self-explanatory.
  SignInButton(this.button, {@required this.onPressed, this.mini = false, this.shape = null, this.text = null})
      : assert(button != null),
        assert(onPressed != null);

  /// The build funtion is used to build the widget which will switch to
  /// desired widget based on the enum class `Buttons`
  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Google:
      case Buttons.GoogleDark:
        return SignInButtonBuilder(
          key: ValueKey("Google"),
          mini: mini,
          text: text ?? 'Sign in with Google',
          icon: FontAwesomeIcons.google,
          backgroundColor: button == Buttons.Google ? Color(0xFFDD4B39) : Color(0xFF4285F4),
          onPressed: onPressed,
          shape: shape,
        );
      case Buttons.Facebook:
        return SignInButtonBuilder(
          key: ValueKey("Facebook"),
          mini: mini,
          text: text ?? 'Sign in with Facebook',
          icon: FontAwesomeIcons.facebookF,
          backgroundColor: Color(0xFF3B5998),
          onPressed: onPressed,
          shape: shape,
        );
      case Buttons.GitHub:
        return SignInButtonBuilder(
          key: ValueKey("GitHub"),
          mini: mini,
          text: text ?? 'Sign in with GitHub',
          icon: FontAwesomeIcons.github,
          backgroundColor: Color(0xFF444444),
          onPressed: onPressed,
          shape: shape,
        );
      case Buttons.LinkedIn:
        return SignInButtonBuilder(
          key: ValueKey("LinkedIn"),
          mini: mini,
          text: text ?? 'Sign in with LinkedIn',
          icon: FontAwesomeIcons.linkedinIn,
          backgroundColor: Color(0xFF007BB6),
          onPressed: onPressed,
          shape: shape,
        );
      case Buttons.Pinterest:
        return SignInButtonBuilder(
          key: ValueKey("Pinterest"),
          mini: mini,
          text: text ?? 'Sign in with Pinterest',
          icon: FontAwesomeIcons.pinterest,
          backgroundColor: Color(0xFFCB2027),
          onPressed: onPressed,
          shape: shape,
        );
      case Buttons.Tumblr:
        return SignInButtonBuilder(
          key: ValueKey("Tumblr"),
          mini: mini,
          text: text ?? 'Sign in with Tumblr',
          icon: FontAwesomeIcons.tumblr,
          backgroundColor: Color(0xFF34526f),
          onPressed: onPressed,
          shape: shape,
        );
      case Buttons.Twitter:
        return SignInButtonBuilder(
          key: ValueKey("Twitter"),
          mini: mini,
          text: text ?? 'Sign in with Twitter',
          icon: FontAwesomeIcons.twitter,
          backgroundColor: Color(0xFF1DA1F2),
          onPressed: onPressed,
          shape: shape,
        );
      case Buttons.Reddit:
        return SignInButtonBuilder(
          key: ValueKey("Reddit"),
          mini: mini,
          text: text ?? 'Sign in with Reddit',
          icon: FontAwesomeIcons.reddit,
          backgroundColor: Color(0xFFFF4500),
          onPressed: onPressed,
          shape: shape,
        );
      case Buttons.Email:
      default:
        return SignInButtonBuilder(
          key: ValueKey("Email"),
          mini: mini,
          text: text ?? 'Sign in with Email',
          icon: Icons.email,
          onPressed: onPressed,
          backgroundColor: Colors.grey[700],
          shape: shape,
        );
    }
  }
}
