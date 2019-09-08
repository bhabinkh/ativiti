import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class ButtonSecondary extends StatelessWidget {
  final Function onPressedCallback;
  final String buttonLabel;
  final IconData icon;
  final Color iconColor;

  const ButtonSecondary({
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
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null) ...[
              Icon(
                icon,
                color: iconColor,
              ),
              SizedBox(
                width: 12,
              )
            ],
            Text(
              buttonLabel,
              textAlign: TextAlign.center,
              style: AtivitiTypography.h5TitleBoldWhite
                  .copyWith(color: AtivitiColors.black),
            )
          ],
        ),
      ),
    );
  }
}
