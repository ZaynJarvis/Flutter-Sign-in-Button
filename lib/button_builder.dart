import 'package:flutter/material.dart';

@immutable
class SignInButtonBuilder extends StatelessWidget {
  /// This is a builder class for signin button
  ///
  /// Icon can be used to define the signin method
  /// User can use Flutter built-in Icons or font-awesome flutter's Icon
  final IconData icon;

  /// Override the icon section with a image logo
  /// For example, Google requires a colorized logo,
  /// which FontAwesome cannot display. If both image
  /// and icon are provided, image will take precedence
  final Widget image;

  /// `mini` tag is used to switch from a full-width signin button to
  final bool mini;

  /// the button's text
  final String text;

  /// The size of the label font
  final double fontSize;

  /// backgroundColor is required but textColor is default to `Colors.white`
  /// splashColor is defalt to `Colors.white30`
  final Color textColor, iconColor, backgroundColor, splashColor;

  /// onPressed should be specified as a required field to indicate the callback.
  final Function onPressed;

  /// padding is default to `EdgeInsets.all(3.0)`
  final EdgeInsets padding, innerPadding;

  /// shape is to specify the custom shape of the widget.
  /// However the flutter widgets contains restriction or bug
  /// on material button, hence, comment out.
  final ShapeBorder shape;

  /// elevation has defalt value of 2.0
  final double elevation;

  /// the height of the button
  final double height;

  /// width is default to be 1/1.5 of the screen
  final double width;

  /// The constructor is self-explanatory.
  SignInButtonBuilder({
    Key key,
    @required this.backgroundColor,
    @required this.onPressed,
    @required this.text,
    this.icon,
    this.image,
    this.fontSize = 14.0,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.splashColor = Colors.white30,
    this.padding,
    this.innerPadding,
    this.mini = false,
    this.elevation = 2.0,
    this.shape,
    this.height,
    this.width,
  })  : assert(text != null),
        assert(icon != null || image != null),
        assert(textColor != null),
        assert(backgroundColor != null),
        assert(onPressed != null),
        assert(mini != null),
        assert(elevation != null);

  /// The build funtion will be help user to build the signin button widget.
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      minWidth: mini ? width ?? 35.0 : null,
      height: height,
      elevation: elevation,
      padding: padding,
      color: backgroundColor,
      onPressed: onPressed,
      splashColor: splashColor,
      child: _getButtonChild(context),
      shape: shape ?? ButtonTheme.of(context).shape,
    );
  }

  /// Get the inner content of a button
  Container _getButtonChild(BuildContext context) {
    if (mini) {
      return Container(
        width: height ?? 35.0,
        height: width ?? 35.0,
        child: _getIconOrImage(),
      );
    }
    return Container(
      constraints: BoxConstraints(
        maxWidth: width ?? MediaQuery.of(context).size.width / 1.5,
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: innerPadding ??
                  EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                  ),
              child: _getIconOrImage(),
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Roboto',
                color: textColor,
                fontSize: fontSize,
                backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Get the icon or image widget
  Widget _getIconOrImage() {
    if (image != null) {
      return image;
    }
    return Icon(
      icon,
      color: this.iconColor,
    );
  }
}
