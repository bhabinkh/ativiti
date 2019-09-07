import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class ButtonBigIcon extends StatelessWidget {
  final String buttonLabel;
  final IconData icon;
  final Color iconColor;
  final Function onPressedCallback;
  const ButtonBigIcon({
    Key key,
    @required this.onPressedCallback,
    @required this.buttonLabel,
    this.icon,
    this.iconColor = AtivitiColors.black,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      borderSide: BorderSide(
        color: AtivitiColors.black,
        width: 1,
      ),
      onPressed: onPressedCallback,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12.0, bottom: 12, left: 9, right: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              buttonLabel,
              style: AtivitiTypography.h5TitleBoldWhite
                  .copyWith(color: AtivitiColors.black, height: 1.43),
            ),
            Icon(
              icon,
              color: iconColor,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
