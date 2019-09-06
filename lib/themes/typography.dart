import 'package:ativiti/themes/colors.dart';
import 'package:flutter/material.dart';

// IBMPlexSans
// TODO: font to be addded rubik
// TODO: font to be addded SFProText

class AtivitiTypography {
  static TextStyle h1TitleBlack = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 40,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.18,
    height: 1.25,
    color: AtivitiColors.black,
  );

  static TextStyle h1TitleWhite =
      AtivitiTypography.h1TitleBlack.copyWith(color: AtivitiColors.white);

  static TextStyle mobileTitleWhite = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 26,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.12,
    height: 1.92,
    color: AtivitiColors.black,
  );

  static TextStyle h3CenterTitleBlack = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 2.5,
    letterSpacing: .09,
    color: AtivitiColors.black,
  );

  static TextStyle h3CenterTitleRose =
      AtivitiTypography.h3CenterTitleBlack.copyWith(
    color: AtivitiColors.coralPink,
    height: 1.2,
  );

  static TextStyle h3CenterTitleWhite =
      AtivitiTypography.h3CenterTitleBlack.copyWith(
    color: AtivitiColors.white,
    height: 2.5,
  );

  static TextStyle h3TitleBlack = AtivitiTypography.h3CenterTitleWhite.copyWith(
    color: AtivitiColors.black,
  );

  static TextStyle h3TitleGrey = AtivitiTypography.h3CenterTitleRose.copyWith(
    color: AtivitiColors.brownGrey,
  );

  static TextStyle linkParagraph1 =
      AtivitiTypography.h3CenterTitleBlack.copyWith(
    color: Color(0xff4872b0),
    height: 1.7,
  );

  static TextStyle paragraphContentGrey =
      AtivitiTypography.linkParagraph1.copyWith(
    color: AtivitiColors.brownGrey,
    fontWeight: FontWeight.normal,
    height: 1.7,
  );

  static TextStyle paragraphContentWhite =
      AtivitiTypography.paragraphContentGrey.copyWith(
    color: AtivitiColors.white,
  );

  static TextStyle icons18pxBlack = TextStyle(
    fontFamily: 'LineAwesome',
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Color(0xff252631),
  );

  static TextStyle icons18pxGrey = AtivitiTypography.icons18pxBlack.copyWith(
    color: Color(0xff778ca2),
  );

  static TextStyle icons16pxGrey = AtivitiTypography.icons18pxGrey.copyWith(
    fontSize: 16,
  );

  static TextStyle h4TitleMenuBlack = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.25,
    letterSpacing: .18,
    color: AtivitiColors.black,
  );

  static TextStyle h4TitleMenuGrey =
      AtivitiTypography.h4TitleMenuBlack.copyWith(
    color: AtivitiColors.brownGrey,
  );

  static TextStyle h4TitleMenuWhite =
      AtivitiTypography.h4TitleMenuBlack.copyWith(
    color: AtivitiColors.white,
  );

  static TextStyle mobileRegularBlack = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.19,
    letterSpacing: .1,
    color: AtivitiColors.black,
  );

  static TextStyle mobileGreyRegularCenter =
      AtivitiTypography.mobileRegularBlack.copyWith(
    color: AtivitiColors.brownGrey,
    letterSpacing: .18,
    height: 1.69,
  );

  static TextStyle mobileBoldWhite =
      AtivitiTypography.mobileGreyRegularCenter.copyWith(
    fontWeight: FontWeight.w600,
    color: AtivitiColors.white,
  );

  static TextStyle headingSh5BlackCenter = TextStyle(
      fontFamily: 'Rubik',
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Color(0xff252631));

  static TextStyle paragraphContentBlackLeftBold = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.09,
    height: 1.36,
    color: AtivitiColors.black,
  );

  static TextStyle h4TitleMenuGreyWhen = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.16,
    height: 1.43,
    color: AtivitiColors.brownGrey,
  );

  static TextStyle h5TitleBold = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.09,
    height: 1.93,
    color: AtivitiColors.black,
  );

  static TextStyle h5TitleWhiteBold = AtivitiTypography.h5TitleBold.copyWith(
    color: AtivitiColors.white,
  );

  static TextStyle h5TitleBoldWhite =
      AtivitiTypography.h5TitleWhiteBold.copyWith(
    height: 1.43,
  );

  static TextStyle regularTextDarkMedium = TextStyle(
    fontFamily: 'Rubik',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.09,
    height: 1.5,
    color: Color(0xff252631),
  );

  static TextStyle fieldNormalBlack = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    letterSpacing: 0.16,
    height: 1.29,
    color: Color(0xff171717),
  );

  static TextStyle fieldNormalWhite =
      AtivitiTypography.fieldNormalBlack.copyWith(
    color: AtivitiColors.white,
  );

  static TextStyle h5Title = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.93,
    letterSpacing: .09,
    color: AtivitiColors.black,
  );

  static TextStyle h5TitleGrey = AtivitiTypography.h5Title.copyWith(
    color: AtivitiColors.brownGrey,
  );

  static TextStyle h5TitleBoldSpecial = AtivitiTypography.h5Title.copyWith(
    height: 1,
  );
  static TextStyle h5TitleWhite2 = AtivitiTypography.h5Title.copyWith(
    color: AtivitiColors.white,
  );

  static TextStyle paragraphContentBlackLeft =
      AtivitiTypography.h5Title.copyWith(
    height: 1.36,
  );
  static TextStyle paragraphContentBlackLeft2 =
      AtivitiTypography.paragraphContentBlackLeft.copyWith(
    color: AtivitiColors.brownGrey,
  );
  static TextStyle textNone = AtivitiTypography.tagWhiteText2.copyWith(
    height: 1.29,
    color: AtivitiColors.brownGrey,
    letterSpacing: .16,
  );
  static TextStyle tagWhiteText2 = AtivitiTypography.h5TitleWhite2.copyWith(
    height: 1.36,
    color: AtivitiColors.white,
  );
  static TextStyle textNone2 = AtivitiTypography.textNone.copyWith(
    height: 1.71,
  );
  static TextStyle sFProTextBold2 = TextStyle(
    fontFamily: 'SFProText',
    fontSize: 12,
    fontWeight: FontWeight.bold,
    height: 1.67,
    color: Color(0xff709e94),
  );
  static TextStyle sFProTextMedium8 = TextStyle(
    fontFamily: 'SFProText',
    fontSize: 8,
    fontWeight: FontWeight.w600,
    height: .15,
    color: Color(0xff989898),
  );
  static TextStyle h6LabelWhite = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.33,
    color: AtivitiColors.white,
    letterSpacing: .08,
  );
  static TextStyle h6LabelBlack = AtivitiTypography.h6LabelWhite.copyWith(
    color: AtivitiColors.black,
  );
  static TextStyle h6LabelCenterService =
      AtivitiTypography.h6LabelBlack.copyWith(
    height: 1.25,
  );
  static TextStyle h6LabelGrey = AtivitiTypography.h6LabelWhite.copyWith(
    color: AtivitiColors.brownGrey,
    height: 1.58,
  );
  static TextStyle h6Location = AtivitiTypography.h6LabelGrey.copyWith(
    color: AtivitiColors.black,
    fontStyle: FontStyle.italic,
  );
  static TextStyle tagWhiteText = AtivitiTypography.h6LabelGrey.copyWith(
    color: AtivitiColors.white,
  );
  static TextStyle infoRed = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 11,
    fontWeight: FontWeight.bold,
    height: 1.73,
    color: AtivitiColors.scarlet,
    letterSpacing: .07,
  );
  static TextStyle infoGreen = AtivitiTypography.infoRed.copyWith(
    color: Color(0xff28aa08),
  );
  static TextStyle h6LabelBlue = AtivitiTypography.infoRed.copyWith(
    color: AtivitiColors.dusk,
    height: 1.9,
    //text-align: right
  );
  static TextStyle h6LabelGreen = AtivitiTypography.h6LabelBlue.copyWith(
    color: Color(0xff28aa08),
  );
  static TextStyle h6LabelRed = AtivitiTypography.h6LabelBlue.copyWith(
    color: AtivitiColors.coralPink,
  );
  static TextStyle h6LabelYellow = AtivitiTypography.h6LabelBlue.copyWith(
    color: AtivitiColors.tangerine,
  );
  static TextStyle h6LabelBlack10 = AtivitiTypography.h6LabelBlue.copyWith(
    color: AtivitiColors.black,
    fontSize: 10,
  );
  static TextStyle h6LabelRedRegular =
      AtivitiTypography.h6LabelBlack10.copyWith(
    color: AtivitiColors.coralPink,
    fontSize: 10,
  );
  static TextStyle tagSmallText = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 10,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AtivitiColors.black,
    letterSpacing: .07,
  );
  static TextStyle tagSmallTextWhite = AtivitiTypography.tagSmallText.copyWith(
    color: AtivitiColors.white,
  );
  // static TextStyle h6LabelGrey= AtivitiTypography.h6LabelBlue.copyWith(
  //   color: AtivitiColors.brownGrey,
  // );
  static TextStyle tagSmallTextRegularBlue =
      AtivitiTypography.tagSmallText.copyWith(
    color: Color(0xff4872b0),
  );
}
