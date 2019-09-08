import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class BoxActivity extends StatelessWidget {
  final String activity;
  final BoxType boxType;
  final String place;
  final String asset;
  final String location;
  // final double rating;
  final String description;

  BoxActivity(
      {@required this.activity,
      @required this.place,
      @required this.asset,
      @required this.boxType,
      @required this.location,
      // @required this.rating,
      this.description}) {
    if (boxType == BoxType.FULL) {
      assert(description.length != 0);
    }
  }

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
      // width: this.boxType == BoxType.FULL
      //     ? 320
      //     : (this.boxType == BoxType.HALF ? 147 : 194),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(4),
            ),
            child: Container(
              height: boxType == BoxType.FULL ? 150 : 90,
              color: Colors.red,
              // TODO change color to asset
              // fit image to fit width
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 9,
              horizontal: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      activity,
                      style: AtivitiTypography.h4TitleMenuBlack
                          .copyWith(height: 1.25),
                    ),
                    // boxType == BoxType.FULL
                    //     ? Row(
                    //         children: <Widget>[
                    //           Icon(
                    //             // TODO change this icon and convert it to svg
                    //             AtivitiIcons.star,
                    //             color: AtivitiColors.coralPink,
                    //             size: 13,
                    //           ),
                    //           SizedBox(
                    //             width: 5,
                    //           ),
                    //           Text(
                    //             rating.toString(),
                    //             style: AtivitiTypography.h6LabelBlack,
                    //           )
                    //         ],
                    //       )
                    //     : Container(),
                  ],
                ),
                Text(
                  place,
                  style: AtivitiTypography.h6LabelBlack.copyWith(height: 1.33),
                ),
                if (boxType == BoxType.FULL)
                  Text(
                    description,
                    style: AtivitiTypography.h6LabelGrey.copyWith(height: 1.58),
                  ),
                Container(
                  margin: EdgeInsets.only(
                    top: boxType == BoxType.FULL ? 1 : 11,
                    bottom: 4,
                  ),
                  height: 1,
                  color: Color(0xff979797).withOpacity(0.2),
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
                  height: 5,
                ),
                // boxType != BoxType.FULL
                //     ? Row(
                //         children: <Widget>[
                //           Icon(
                //             // TODO change this icon and convert it to svg
                //             AtivitiIcons.star,
                //             color: AtivitiColors.coralPink,
                //             size: 13,
                //           ),
                //           SizedBox(
                //             width: 5,
                //           ),
                //           Text(
                //             rating.toString(),
                //             style: AtivitiTypography.h6LabelBlack,
                //           )
                //         ],
                //       )
                //     : Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

enum BoxType { HALF, MEDUIM, FULL }
