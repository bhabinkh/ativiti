import 'package:ativiti/components/button-components/ButtonSecondary.dart';
import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyMessagePage extends StatelessWidget {
  final String mainMessage;
  final String subMessage;
  final String buttonLabel;
  final Function onButtonPressedCallback;

  const EmptyMessagePage({
    Key key,
    @required this.mainMessage,
    @required this.subMessage,
    @required this.buttonLabel,
    @required this.onButtonPressedCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AtivitiColors.paleGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SvgPicture.asset('assets/images/artwork.svg'),
            Column(
              children: <Widget>[
                Text(
                  mainMessage,
                  textAlign: TextAlign.center,
                  style: AtivitiTypography.h3CenterTitleBlack
                      .copyWith(height: 1.2),
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  subMessage,
                  textAlign: TextAlign.center,
                  style:
                      AtivitiTypography.h4TitleMenuGrey.copyWith(height: 1.5),
                ),
              ],
            ),
            ButtonSecondary(
              buttonLabel: buttonLabel,
              onPressedCallback: onButtonPressedCallback,
            )
          ],
        ),
      ),
    );
  }
}
