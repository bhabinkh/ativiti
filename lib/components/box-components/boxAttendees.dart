import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class BoxAttendes extends StatelessWidget {
  final String imageUrl;
  final String attendeeName;

  const BoxAttendes(
      {Key key, @required this.imageUrl, @required this.attendeeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AtivitiColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.14),
            offset: Offset(0, 2),
            spreadRadius: 0,
            blurRadius: 10,
          )
        ],
      ),
      // width: 157,
      // height: 100,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              // child: Image.network(
              //   imageUrl,
              //   fit: BoxFit.fitHeight,
              // ),
              // TODO add circle avatar here
              backgroundColor: AtivitiColors.tempColor,
              minRadius: 45 / 2,
              maxRadius: 45 / 2,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              attendeeName,
              style: AtivitiTypography.h5TitleBold.copyWith(height: 1.43),
            )
          ],
        ),
      ),
    );
  }
}
