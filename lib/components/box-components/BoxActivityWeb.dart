import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class BoxActivityWeb extends StatelessWidget {
  final String asset;
  final String activity;
  final String place;
  final String location;
  // final double rating;
  final String date;
  final String timeFrom;
  final String timeTo;
  final bool hasOpenClose;

  const BoxActivityWeb({
    Key key,
    @required this.asset,
    @required this.activity,
    @required this.hasOpenClose,
    @required this.place,
    @required this.date,
    @required this.timeFrom,
    @required this.timeTo,
    @required this.location,
    // @required this.rating,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AtivitiColors.white,
        boxShadow: [
          BoxShadow(
            color: AtivitiColors.brownGrey.withOpacity(0.16),
            spreadRadius: 0,
            blurRadius: 14,
            offset: Offset(0, 2),
          )
        ],
      ),
      // width: 188,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4), topRight: Radius.circular(4)),
            child: Container(
              color: Colors.red,
              height: 105,
              // TODO replace color with asset
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  activity,
                  style:
                      AtivitiTypography.h4TitleMenuBlack.copyWith(height: 1.25),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  place,
                  style: AtivitiTypography.h6LabelBlack.copyWith(height: 1.33),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      AtivitiIcons.location1,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      location,
                      style:
                          AtivitiTypography.h6LabelBlack.copyWith(height: 1.33),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                // Row(
                //   children: <Widget>[
                //     Icon(
                //       // TODO change this icon and convert it to svg
                //       AtivitiIcons.star,
                //       color: AtivitiColors.coralPink,
                //       size: 13,
                //     ),
                //     SizedBox(
                //       width: 5,
                //     ),
                //     Text(
                //       rating.toString(),
                //       style: AtivitiTypography.h6LabelBlack,
                //     )
                //   ],
                // ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4.5),
                  height: 1,
                  color: Color(0xff979797).withOpacity(.2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      date,
                      style: AtivitiTypography.h6LabelBlack.copyWith(
                          color: AtivitiColors.coralPink, height: 1.9),
                    ),
                    Text(
                      timeFrom + ' - ' + timeTo,
                      style:
                          AtivitiTypography.h6LabelBlack.copyWith(height: 1.9),
                    )
                  ],
                ),
                // if (hasOpenClose)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      hasOpenClose ? '(opens - closes)' : "",
                      textAlign: TextAlign.right,
                      style: AtivitiTypography.h6LabelBlack10.copyWith(
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
