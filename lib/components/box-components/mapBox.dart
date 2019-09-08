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
  final bool hasOpensAtClosesAt;
  // final double rating;
  final BookingType bookingType;
  const MapBox(
      {Key key,
      @required this.startTime,
      @required this.endTime,
      @required this.title,
      @required this.place,
      @required this.bookingType,
      @required this.location,
      @required this.hasOpensAtClosesAt
      // @required this.rating,
      })
      : super(key: key);
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
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (hasOpensAtClosesAt) ...[
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AtivitiColors.lightPeriwinkle,
                  ),
                ),
                Container(
                  width: 3,
                  height: 40,
                  color: AtivitiColors.lightPeriwinkle,
                ),
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: AtivitiColors.lightPeriwinkle,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              if (hasOpensAtClosesAt)
                Text(
                  'Open at',
                  style: AtivitiTypography.h6LabelBlack.copyWith(height: 1.33),
                ),
              Text(
                startTime,
                style:
                    AtivitiTypography.h4TitleMenuBlack.copyWith(height: 1.25),
              ),
              if (hasOpensAtClosesAt)
                Text(
                  'Close at',
                  style: AtivitiTypography.h6LabelBlack.copyWith(height: 1.33),
                ),
              Text(
                endTime,
                style:
                    AtivitiTypography.h4TitleMenuBlack.copyWith(height: 1.25),
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
                style:
                    AtivitiTypography.h4TitleMenuBlack.copyWith(height: 1.25),
              ),
              Text(
                place,
                style: AtivitiTypography.h5Title.copyWith(height: 1.3),
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
                    style:
                        AtivitiTypography.h6LabelBlack.copyWith(height: 1.58),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              // Row(
              //   children: <Widget>[
              //     Icon(
              //       AtivitiIcons.star,
              //       color: AtivitiColors.coralPink,
              //       size: 13,
              //     ),
              //     SizedBox(
              //       width: 4,
              //     ),
              //     Text(
              //       rating.toString(),
              //       style: AtivitiTypography.h6LabelBlack,
              //     ),
              //   ],
              // ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (this.bookingType == BookingType.DIRECT_BOOKING)
                Text(
                  'Direct\nbooking',
                  style: AtivitiTypography.h6LabelBlue.copyWith(
                    height: 1.5,
                    color: AtivitiColors.dusk,
                  ),
                  textAlign: TextAlign.right,
                ),
              if (this.bookingType == BookingType.BOOKING_REQUEST)
                Text(
                  'Booking\nrequest',
                  style: AtivitiTypography.h6LabelBlue.copyWith(
                    height: 1.5,
                    color: AtivitiColors.dusk,
                  ),
                  textAlign: TextAlign.right,
                ),
              if (this.bookingType == BookingType.BOOKED)
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.check,
                      size: 11,
                      color: Color(0xff28aa08),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Booked',
                      style: AtivitiTypography.h6LabelBlue.copyWith(
                        height: 1.5,
                        color: Color(0xff28aa08),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              if (this.bookingType == BookingType.WAITING_LIST)
                Text(
                  'Waiting\nlist',
                  style: AtivitiTypography.h6LabelBlue.copyWith(
                    height: 1.5,
                    color: AtivitiColors.tangerine,
                  ),
                  textAlign: TextAlign.right,
                ),
              if (this.bookingType == BookingType.FULL)
                Text(
                  'Full',
                  style: AtivitiTypography.h6LabelBlue.copyWith(
                    height: 1.9,
                    color: AtivitiColors.coralPink,
                  ),
                  textAlign: TextAlign.right,
                ),
            ],
          )
        ],
      ),
    );
  }
}

enum BookingType {
  BOOKING_REQUEST,
  DIRECT_BOOKING,
  BOOKED,
  WAITING_LIST,
  FULL,
}
