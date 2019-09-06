import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class BoxReview extends StatefulWidget {
  final String imageUrl;
  final String reviewerName;
  final double ratingValue;
  final String reviewText;
  final String reviewDate;
  final Function onReportCallback;
  // TODO implement see more if the review text is long

  const BoxReview({
    Key key,
    @required this.imageUrl,
    @required this.reviewerName,
    @required this.ratingValue,
    @required this.reviewText,
    @required this.reviewDate,
    @required this.onReportCallback,
  }) : super(key: key);

  @override
  _BoxReviewState createState() => _BoxReviewState();
}

class _BoxReviewState extends State<BoxReview> {
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
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    // child: Image.network(
                    //   imageUrl,
                    //   fit: BoxFit.fitHeight,
                    // ),
                    // TODO change color to the image url
                    backgroundColor: AtivitiColors.tempColor,
                    minRadius: 15,
                    maxRadius: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.reviewerName,
                    style: AtivitiTypography.h5TitleBold.copyWith(height: 1.43),
                  )
                ],
              ),
              Row(
                // TODO check the rating value to render the star
                children: <Widget>[
                  for (int i = 0; i < widget.ratingValue.round(); i++) ...[
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      AtivitiIcons.star,
                      size: 13,
                      color: AtivitiColors.scarlet,
                    ),
                  ]
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            widget.reviewText,
            maxLines: 4,
            style: AtivitiTypography.h4TitleMenuBlack,
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                this.widget.reviewDate,
                style: AtivitiTypography.h5TitleGrey,
              ),
              GestureDetector(
                onTap: this.widget.onReportCallback,
                child: Text(
                  'Report this comment',
                  style: AtivitiTypography.h5TitleGrey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
