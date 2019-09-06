import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class BoxNewActivity extends StatelessWidget {
  final String asset;
  final String activityName;
  final String place;
  final String date;
  final String location;
  final ActivityType type;
  final Function onCheckoutCallback;

  BoxNewActivity({
    Key key,
    @required this.asset,
    @required this.activityName,
    @required this.place,
    @required this.type,
    @required this.date,
    this.onCheckoutCallback,
    @required this.location,
  }) {
    if (this.type == ActivityType.CHECKOUT) {
      assert(onCheckoutCallback != null);
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
            color: AtivitiColors.brownGrey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 1,
          )
        ],
      ),
      // width: 320,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4), topRight: Radius.circular(4)),
              child: Container(
                height: 150,
                color: Colors.red,
                // TODO insert image replace url
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    activityName,
                    style: AtivitiTypography.h4TitleMenuBlack,
                  ),
                  Text(
                    place,
                    style: AtivitiTypography.h6LabelBlack,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  type == ActivityType.AVAILABLE_SOON
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Available Soon',
                              style: AtivitiTypography.h6LabelBlack
                                  .copyWith(color: AtivitiColors.coralPink),
                            ),
                            Text(
                              date,
                              style: AtivitiTypography.h6LabelGrey,
                            )
                          ],
                        )
                      : FlatButton(
                          onPressed: onCheckoutCallback,
                          color: AtivitiColors.coralPink,
                          child: Text(
                            'Check this out!',
                            style: AtivitiTypography.h5TitleWhiteBold
                                .copyWith(height: 1),
                          ),
                        ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12.5),
                    height: 1,
                    color: Color(0xff979797).withOpacity(.2),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        AtivitiIcons.location1,
                        size: 13,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        location,
                        style: AtivitiTypography.h6LabelBlack,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum ActivityType { AVAILABLE_SOON, CHECKOUT }
