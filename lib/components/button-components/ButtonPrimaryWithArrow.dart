import 'dart:math' as math;
import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class ButtonPrimaryWithArrow extends StatelessWidget {
  final Function onPressedCallback;
  final String buttonLabel;

  const ButtonPrimaryWithArrow({
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              buttonLabel,
              style: AtivitiTypography.h5TitleBoldWhite.copyWith(height: 1.43),
            ),
            Transform.rotate(
              angle: math.pi,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Icon(
                  AtivitiIcons.littleArrowLeft,
                  size: 18,
                  color: AtivitiColors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
