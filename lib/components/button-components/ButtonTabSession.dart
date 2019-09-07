import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class ButtonTabSession extends StatelessWidget {
  final Function onPressedCallback;
  final String buttonLabel;

  const ButtonTabSession({
    Key key,
    @required this.onPressedCallback,
    @required this.buttonLabel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 61),
      color: AtivitiColors.coralPink,
      child: Text(
        buttonLabel,
        style: AtivitiTypography.h5TitleWhiteBold.copyWith(height: 1.43),
      ),
      onPressed: onPressedCallback,
    );
  }
}
