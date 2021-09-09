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

  ///button should have a width for longer text
  final double? width;

  /// The constructor is fairly self-explanatory.
  SignInButton(
    this.button, {
    required this.onPressed,
    this.mini = false,
    this.padding = const EdgeInsets.all(0),
    this.shape,
    this.text,
    this.elevation = 2.0,
    this.width,
  }) : assert(
            mini != true ||
                !(button == Buttons.Google ||
                    button == Buttons.GoogleDark ||
                    button == Buttons.FacebookNew),
            "Google and FacebookNew buttons do not support mini mode");

  /// The build funtion is used to build the widget which will switch to
  /// desired widget based on the enum class `Buttons`
  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Google:
      case Buttons.GoogleDark:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("Google"),
          text: text ?? 'Sign in with Google',
          textColor: button == Buttons.Google
              ? Color.fromRGBO(0, 0, 0, 0.54)
              : Color(0xFFFFFFFF),
          image: Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
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
          backgroundColor:
              button == Buttons.Google ? Color(0xFFFFFFFF) : Color(0xFF4285F4),
          onPressed: onPressed,
          padding: padding,
          innerPadding: EdgeInsets.all(0),
          shape: shape,
          height: 36.0,
        );
      case Buttons.Facebook:
      case Buttons.FacebookNew:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("Facebook"),
          mini: mini,
          text: text ?? 'Sign in with Facebook',
          icon: FontAwesomeIcons.facebookF,
          image: button == Buttons.FacebookNew
              ? ClipRRect(
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
              ? Color(0xFF1877f2)
              : Color(0xFF3B5998),
          innerPadding: button == Buttons.FacebookNew
              ? EdgeInsets.fromLTRB(12, 0, 11, 0)
              : null,
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.GitHub:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("GitHub"),
          mini: mini,
          text: text ?? 'Sign in with GitHub',
          icon: FontAwesomeIcons.github,
          backgroundColor: Color(0xFF444444),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Apple:
      case Buttons.AppleDark:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("Apple"),
          mini: mini,
          text: text ?? 'Sign in with Apple',
          textColor: button == Buttons.Apple ? Colors.black : Colors.white,
          icon: FontAwesomeIcons.apple,
          iconColor: button == Buttons.Apple ? Colors.black : Colors.white,
          backgroundColor:
              button == Buttons.Apple ? Color(0xFFFFFFFF) : Color(0xFF000000),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.LinkedIn:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("LinkedIn"),
          mini: mini,
          text: text ?? 'Sign in with LinkedIn',
          icon: FontAwesomeIcons.linkedinIn,
          backgroundColor: Color(0xFF007BB6),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Pinterest:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("Pinterest"),
          mini: mini,
          text: text ?? 'Sign in with Pinterest',
          icon: FontAwesomeIcons.pinterest,
          backgroundColor: Color(0xFFCB2027),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Tumblr:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("Tumblr"),
          mini: mini,
          text: text ?? 'Sign in with Tumblr',
          icon: FontAwesomeIcons.tumblr,
          backgroundColor: Color(0xFF34526f),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Twitter:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("Twitter"),
          mini: mini,
          text: text ?? 'Sign in with Twitter',
          icon: FontAwesomeIcons.twitter,
          backgroundColor: Color(0xFF1DA1F2),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Reddit:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("Reddit"),
          mini: mini,
          text: text ?? 'Sign in with Reddit',
          icon: FontAwesomeIcons.reddit,
          backgroundColor: Color(0xFFFF4500),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Quora:
        return SignInButtonBuilder(
          width: width,
          key: ValueKey("Quora"),
          mini: mini,
          text: text ?? 'Sign in with Quora',
          icon: FontAwesomeIcons.quora,
          backgroundColor: Color(0xA40A00),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Yahoo:
        return SignInButtonBuilder(
          width: width,
          key: ValueKey("Yahoo"),
          mini: mini,
          text: text ?? 'Sign in with Yahoo',
          icon: FontAwesomeIcons.yahoo,
          backgroundColor: Color(0x6001D2),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Hotmail:
        return SignInButtonBuilder(
          width: width,
          key: ValueKey("Hotmail"),
          mini: mini,
          text: text ?? 'Sign in with Hotmail',
          icon: FontAwesomeIcons.sms,
          backgroundColor: Color(0x0072C6),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Xbox:
        return SignInButtonBuilder(
          width: width,
          key: ValueKey("Xbox"),
          mini: mini,
          text: text ?? 'Sign in with Xbox',
          icon: FontAwesomeIcons.xbox,
          backgroundColor: Color(0x107C0F),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Microsoft:
        return SignInButtonBuilder(
          key: ValueKey("Microsoft"),
          mini: mini,
          text: text ?? 'Sign in with Microsoft',
          icon: FontAwesomeIcons.microsoft,
          backgroundColor: Color(0xff235A9F),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case Buttons.Email:
      default:
        return SignInButtonBuilder(
          width: width,
          elevation: elevation,
          key: ValueKey("Email"),
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
