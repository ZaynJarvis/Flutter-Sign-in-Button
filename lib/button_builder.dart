import 'package:flutter/material.dart';

@immutable
class SignInButtonBuilder extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color textColor, backgroundColor;
  final Function onPressed;
  final EdgeInsets padding;
  final ShapeBorder shape;
  final bool mini;
  final double elevation;
  final double width;

  SignInButtonBuilder({
    Key key,
    @required this.icon,
    @required this.backgroundColor,
    @required this.onPressed,
    this.title = '',
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.all(3.0),
    this.mini = false,
    this.elevation = 2.0,
    this.shape = null,
    this.width = null,
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
      key: key,
      minWidth: mini ? 35.0 : null,
      elevation: elevation,
      padding: padding,
      color: backgroundColor,
      onPressed: onPressed,
      splashColor: Colors.red,
      shape: shape,
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
                maxWidth: width ?? MediaQuery.of(context).size.width / 1.5,
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
