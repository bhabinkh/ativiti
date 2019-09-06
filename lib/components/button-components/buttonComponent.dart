import 'package:ativiti/themes/colors.dart';
import 'package:flutter/material.dart';

class ButtonComponent {
  static RaisedButton primaryButton({Widget child, Function onPressed}) =>
      RaisedButton(
        onPressed: onPressed,
        elevation: 0,
        highlightElevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: child,
        ),
        color: AtivitiColors.black,
      );

  static RaisedButton primaryOutlineButton(
          {Widget child, Function onPressed}) =>
      RaisedButton(
        onPressed: onPressed,
        elevation: 0,
        highlightElevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: child,
        ),
        color: AtivitiColors.white,
      );
}
