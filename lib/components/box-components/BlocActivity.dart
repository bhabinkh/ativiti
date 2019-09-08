import 'package:ativiti/themes/colors.dart';
import 'package:flutter/material.dart';

class BlocActivity extends StatelessWidget {
  final String activityName;

  const BlocActivity({Key key, @required this.activityName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 109,
      // width: 149,
      decoration: BoxDecoration(
        color: AtivitiColors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          activityName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'IBMPlexSans',
            fontWeight: FontWeight.w600,
            height: 1.43,
            letterSpacing: 0.09,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
