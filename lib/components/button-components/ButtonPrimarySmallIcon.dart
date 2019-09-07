import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class ButtonPrimarySmallIcon extends StatelessWidget {
  final Function onPressedCallback;
  final String buttonLabel;
  final IconData icon;
  final Color iconColor;

  ButtonPrimarySmallIcon({
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
        padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 9, right: 33),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              size: 18,
              color: iconColor,
            ),
            SizedBox(
              width: 9,
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
