import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';

class BoxCategory extends StatelessWidget {
  final String asset;
  final String category;
  final int number;

  const BoxCategory({
    Key key,
    @required this.asset,
    @required this.category,
    @required this.number,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AtivitiColors.white,
          boxShadow: [
            BoxShadow(
              color: AtivitiColors.brownGrey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 1,
            )
          ],
        ),
        // height: 128,
        // width: 128,
        child: Stack(
          children: <Widget>[
            // TODO add asset here
            // Image.asset(

            // );
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AtivitiColors.brownGrey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 1,
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff282828).withOpacity(0.8),
                      Color(0xff282828).withOpacity(0.29),
                      Color(0xff282828).withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  )),
            ),

            Positioned(
              bottom: 8,
              left: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    category,
                    style: AtivitiTypography.h4TitleMenuWhite.copyWith(
                      height: 1.25,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        AtivitiIcons.menu,
                        size: 9,
                        color: AtivitiColors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        number.toString(),
                        style:
                            AtivitiTypography.tagWhiteText.copyWith(height: 1),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
