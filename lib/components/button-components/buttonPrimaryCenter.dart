import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class ButtonPrimaryCenter extends StatelessWidget {
  final Function onPressedCallback;
  final String buttonLabel;

  const ButtonPrimaryCenter({
    Key key,
    @required this.onPressedCallback,
    @required this.buttonLabel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      elevation: 7,
      padding: EdgeInsets.all(0),
      onPressed: onPressedCallback,
      color: AtivitiColors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
        child: Text(
          buttonLabel,
          style: AtivitiTypography.h5TitleBoldWhite.copyWith(height: 1.43),
        ),
      ),
    );
  }
}
