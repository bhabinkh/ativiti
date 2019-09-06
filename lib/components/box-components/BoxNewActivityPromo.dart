import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class BoxNewActivityPromo extends StatelessWidget {
  final String imageUrl;
  final String promotionName;
  final double subsciptionCharge;
  final String description;

  const BoxNewActivityPromo({
    Key key,
    @required this.imageUrl,
    @required this.promotionName,
    @required this.subsciptionCharge,
    @required this.description,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AtivitiColors.brownGrey.withOpacity(0.06),
            spreadRadius: 2,
            blurRadius: 1,
          )
        ],
        color: AtivitiColors.white,
      ),
      width: 320,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 150,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                )
                // TODO change asset with color
                ),
          ),
          Container(
            padding: EdgeInsets.only(top: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  promotionName,
                  style: AtivitiTypography.h4TitleMenuBlack,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Subscribe to the new Ativiti Pass for ',
                        style: TextStyle(
                          fontFamily: 'IBMPlexSans',
                          fontSize: 12,
                          height: 1.33,
                          letterSpacing: 0.08,
                          color: AtivitiColors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'onlt \$${subsciptionCharge.toString()}',
                        style: TextStyle(
                          fontFamily: 'IBMPlexSans',
                          fontSize: 12,
                          height: 1.33,
                          letterSpacing: 0.08,
                          color: AtivitiColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 11.0),
                  child: Text(
                    description,
                    style: AtivitiTypography.h6LabelGrey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
