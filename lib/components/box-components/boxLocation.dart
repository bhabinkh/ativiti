import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class BoxLocation extends StatelessWidget {
  final String location;
  final String asset;

  const BoxLocation({
    Key key,
    @required this.location,
    @required this.asset,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: AtivitiColors.brownGrey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 1,
                )
              ],
              gradient: LinearGradient(
                colors: [
                  Color(0xff585858).withOpacity(0.8),
                  Color(0xff585858).withOpacity(0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            // TODO add image asset here,
          ),
          Positioned(
            bottom: 19,
            left: 14,
            child: Text(
              this.location,
              style: AtivitiTypography.h4TitleMenuWhite.copyWith(height: 1.25),
            ),
          )
        ],
      ),
    );
  }
}
