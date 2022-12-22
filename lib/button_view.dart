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
  final ShapeBorder? shape;

  /// overrides the default button text
  final String? text;

  /// overrides the default button padding
  final EdgeInsets padding;

  // overrides the default button elevation
  final double elevation;

  /// The constructor is fairly self-explanatory.
  const SignInButton(
    this.button, {
    Key? key,
    required this.onPressed,
    this.mini = false,
    this.padding = const EdgeInsets.all(0),
    this.shape,
    this.text,
    this.elevation = 2.0,
  })  : assert(
            mini != true ||
                !(button == Buttons.Google ||
                    button == Buttons.GoogleDark ||
                    button == Buttons.FacebookNew),
            'Google and FacebookNew buttons do not support mini mode'),
        super(key: key);

  /// The build function is used to build the widget which will switch to
  /// desired widget based on the enum class `Buttons`
  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Google:
      case Buttons.GoogleDark:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Google'),
          text: text ?? 'Sign in with Google',
          textColor: button == Buttons.Google
              ? const Color.fromRGBO(0, 0, 0, 0.54)
              : const Color(0xFFFFFFFF),
          image: Container(
            margin: const EdgeInsets.fromLTRB(6.0, 0.0, 4.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage(
                  button == Buttons.Google
                      ? 'assets/logos/google_light.png'
                      : 'assets/logos/google_dark.png',
                  package: 'flutter_signin_button',
                ),
                height: 36.0,
              ),
            ),
          ),
          backgroundColor: button == Buttons.Google
              ? const Color(0xFFFFFFFF)
              : const Color(0xFF4285F4),
          onPressed: onPressed,
          padding: padding,
          innerPadding: const EdgeInsets.all(0),
          shape: shape,
          height: 36.0,
        );
      case Buttons.Facebook:
      case Buttons.FacebookNew:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Facebook'),
          mini: mini,
          text: text ?? 'Sign in with Facebook',
          icon: FontAwesomeIcons.facebookF,
          image: button == Buttons.FacebookNew
              ? const ClipRRect(
                  child: Image(
                    image: AssetImage(
                      'assets/logos/facebook_new.png',
                      package: 'flutter_signin_button',
                    ),
                    height: 24.0,
                  ),
                )
              : null,
          backgroundColor: button == Buttons.FacebookNew
              ? const Color(0xFF1877f2)
              : const Color(0xFF3B5998),
          innerPadding: button == Buttons.FacebookNew
              ? const EdgeInsets.fromLTRB(12, 0, 11, 0)
              : null,
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.GitHub:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('GitHub'),
          mini: mini,
          text: text ?? 'Sign in with GitHub',
          icon: FontAwesomeIcons.github,
          backgroundColor: const Color(0xFF444444),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Apple:
      case Buttons.AppleDark:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Apple'),
          mini: mini,
          text: text ?? 'Sign in with Apple',
          textColor: button == Buttons.Apple ? Colors.black : Colors.white,
          icon: FontAwesomeIcons.apple,
          iconColor: button == Buttons.Apple ? Colors.black : Colors.white,
          backgroundColor: button == Buttons.Apple
              ? const Color(0xFFFFFFFF)
              : const Color(0xFF000000),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.LinkedIn:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('LinkedIn'),
          mini: mini,
          text: text ?? 'Sign in with LinkedIn',
          icon: FontAwesomeIcons.linkedinIn,
          backgroundColor: const Color(0xFF007BB6),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Pinterest:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Pinterest'),
          mini: mini,
          text: text ?? 'Sign in with Pinterest',
          icon: FontAwesomeIcons.pinterest,
          backgroundColor: const Color(0xFFCB2027),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Tumblr:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Tumblr'),
          mini: mini,
          text: text ?? 'Sign in with Tumblr',
          icon: FontAwesomeIcons.tumblr,
          backgroundColor: const Color(0xFF34526f),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Twitter:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Twitter'),
          mini: mini,
          text: text ?? 'Sign in with Twitter',
          icon: FontAwesomeIcons.twitter,
          backgroundColor: const Color(0xFF1DA1F2),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Reddit:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Reddit'),
          mini: mini,
          text: text ?? 'Sign in with Reddit',
          icon: FontAwesomeIcons.reddit,
          backgroundColor: const Color(0xFFFF4500),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Quora:
        return SignInButtonBuilder(
          key: const ValueKey('Quora'),
          mini: mini,
          text: text ?? 'Sign in with Quora',
          icon: FontAwesomeIcons.quora,
          backgroundColor: const Color(0x00a40a00),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Yahoo:
        return SignInButtonBuilder(
          key: const ValueKey('Yahoo'),
          mini: mini,
          text: text ?? 'Sign in with Yahoo',
          icon: FontAwesomeIcons.yahoo,
          backgroundColor: const Color(0x006001d2),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Hotmail:
        return SignInButtonBuilder(
          key: const ValueKey('Hotmail'),
          mini: mini,
          text: text ?? 'Sign in with Hotmail',
          icon: FontAwesomeIcons.sms,
          backgroundColor: const Color(0x000072c6),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Xbox:
        return SignInButtonBuilder(
          key: const ValueKey('Xbox'),
          mini: mini,
          text: text ?? 'Sign in with Xbox',
          icon: FontAwesomeIcons.xbox,
          backgroundColor: const Color(0x00107c0f),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Microsoft:
        return SignInButtonBuilder(
          key: const ValueKey('Microsoft'),
          mini: mini,
          text: text ?? 'Sign in with Microsoft',
          icon: FontAwesomeIcons.microsoft,
          backgroundColor: const Color(0xff235A9F),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Email:
      default:
        return SignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Email'),
          mini: mini,
          text: text ?? 'Sign in with Email',
          icon: Icons.email,
          onPressed: onPressed,
          padding: padding,
          backgroundColor: Colors.grey[700]!,
          shape: shape,
        );
    }
  }
}
