import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class BoxReview extends StatelessWidget {
  final String imageUrl;
  final String reviewerName;
  final double ratingValue;
  final String reviewText;
  final String reviewDate;
  final Function onReportCallback;

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
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
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
                    reviewerName,
                    style: AtivitiTypography.h5TitleBold,
                  )
                ],
              ),
              Row(
                // TODO check the rating value to render the star
                children: <Widget>[
                  // for (int i = 0; i < ratingValue.round(); i++) {
                  //   Icon(At)
                  // }
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
