import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class MapBox extends StatelessWidget {
  final String startTime;
  final String endTime;
  final String title;
  final String place;
  final String location;
  final double rating;

  const MapBox({
    Key key,
    @required this.startTime,
    @required this.endTime,
    @required this.title,
    @required this.place,
    @required this.location,
    @required this.rating,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AtivitiColors.white,
        boxShadow: [
          BoxShadow(
            color: AtivitiColors.brownGrey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 1,
          )
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                startTime,
                style: AtivitiTypography.h4TitleMenuBlack,
              ),
              Text(
                endTime,
                style: AtivitiTypography.h4TitleMenuBlack,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: AtivitiTypography.h4TitleMenuBlack,
              ),
              Text(
                place,
                style: AtivitiTypography.h5Title,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    AtivitiIcons.location1,
                    size: 13,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    location,
                    style: AtivitiTypography.h6LabelBlack,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    AtivitiIcons.star,
                    color: AtivitiColors.coralPink,
                    size: 13,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    rating.toString(),
                    style: AtivitiTypography.h6LabelBlack,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Direct\nbooking',
                style: AtivitiTypography.h6LabelBlue.copyWith(height: 1.3),
                textAlign: TextAlign.right,
              )
            ],
          )
        ],
      ),
    );
  }
}
