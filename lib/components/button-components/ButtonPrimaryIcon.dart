import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class ButtonPrimaryIcon extends StatelessWidget {
  final Function onPressedCallback;
  final String buttonLabel;
  final IconData icon;
  final Color iconColor;

  ButtonPrimaryIcon({
    Key key,
    @required this.onPressedCallback,
    @required this.buttonLabel,
    @required this.icon,
    this.iconColor = AtivitiColors.white,
  });
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      elevation: 7,
      padding: EdgeInsets.all(0),
      onPressed: onPressedCallback,
      color: AtivitiColors.black,
      child: Padding(
        padding: EdgeInsets.only(top: 13, bottom: 13, left: 12, right: 46),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 18,
              color: iconColor,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              buttonLabel,
              style: AtivitiTypography.h5TitleBoldWhite.copyWith(height: 1.43),
            ),
          ],
        ),
      ),
    );
  }
}
