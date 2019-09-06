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
    color: AtivitiColors.black,
  );

  static TextStyle h1TitleWhite =
      AtivitiTypography.h1TitleBlack.copyWith(color: AtivitiColors.white);

  static TextStyle mobileTitleWhite = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 26,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.12,
    color: AtivitiColors.black,
  );

  static TextStyle iBMPlexSansMedium = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 40,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.18,
    color: AtivitiColors.black,
  );

  static TextStyle h3CenterTitleBlack = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: .09,
    color: AtivitiColors.black,
  );
  static TextStyle textInputFieldValid = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: .016,
    color: AtivitiColors.brownGrey,
  );

  static TextStyle h3CenterTitleRose =
      AtivitiTypography.h3CenterTitleBlack.copyWith(
    color: AtivitiColors.coralPink,
  );

  static TextStyle h3CenterTitleWhite =
      AtivitiTypography.h3CenterTitleBlack.copyWith(
    color: AtivitiColors.white,
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
  );

  static TextStyle paragraphContentGrey =
      AtivitiTypography.linkParagraph1.copyWith(
    color: AtivitiColors.brownGrey,
    fontWeight: FontWeight.normal,
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
    fontWeight: FontWeight.w500,
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
    letterSpacing: .1,
    color: AtivitiColors.black,
  );

  static TextStyle mobileGreyRegularCenter =
      AtivitiTypography.mobileRegularBlack.copyWith(
    color: AtivitiColors.brownGrey,
    letterSpacing: .18,
  );

  static TextStyle mobileBoldWhite =
      AtivitiTypography.mobileGreyRegularCenter.copyWith(
    fontWeight: FontWeight.w500,
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
    color: AtivitiColors.black,
  );

  static TextStyle h4TitleMenuGreyWhen = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.16,
    color: AtivitiColors.brownGrey,
  );

  static TextStyle h5TitleBold = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.09,
    color: AtivitiColors.black,
  );

  static TextStyle h5TitleWhiteBold = AtivitiTypography.h5TitleBold.copyWith(
    color: AtivitiColors.white,
  );

  static TextStyle h5TitleBoldWhite =
      AtivitiTypography.h5TitleWhiteBold.copyWith();

  static TextStyle regularTextDarkMedium = TextStyle(
    fontFamily: 'Rubik',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.09,
    color: Color(0xff252631),
  );

  static TextStyle fieldNormalBlack = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 14,
    letterSpacing: 0.16,
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
    letterSpacing: .09,
    color: AtivitiColors.black,
  );

  static TextStyle h5TitleGrey = AtivitiTypography.h5Title.copyWith(
    color: AtivitiColors.brownGrey,
  );

  static TextStyle h5TitleBoldSpecial = AtivitiTypography.h5Title.copyWith();
  static TextStyle h5TitleWhite2 = AtivitiTypography.h5Title.copyWith(
    color: AtivitiColors.white,
  );

  static TextStyle paragraphContentBlackLeft =
      AtivitiTypography.h5Title.copyWith();
  static TextStyle paragraphContentBlackLeft2 =
      AtivitiTypography.paragraphContentBlackLeft.copyWith(
    color: AtivitiColors.brownGrey,
  );
  static TextStyle textNone = AtivitiTypography.tagWhiteText2.copyWith(
    color: AtivitiColors.brownGrey,
    letterSpacing: .16,
  );
  static TextStyle tagWhiteText2 = AtivitiTypography.h5TitleWhite2.copyWith(
    color: AtivitiColors.white,
  );
  static TextStyle textNone2 = AtivitiTypography.textNone.copyWith();
  static TextStyle sFProTextBold2 = TextStyle(
    fontFamily: 'SFProText',
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Color(0xff709e94),
  );
  static TextStyle sFProTextMedium8 = TextStyle(
    fontFamily: 'SFProText',
    fontSize: 8,
    fontWeight: FontWeight.w500,
    color: Color(0xff989898),
  );
  static TextStyle h6LabelWhite = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AtivitiColors.white,
    letterSpacing: .08,
  );
  static TextStyle h6LabelBlack = AtivitiTypography.h6LabelWhite.copyWith(
    color: AtivitiColors.black,
  );
  static TextStyle h6LabelCenterService =
      AtivitiTypography.h6LabelBlack.copyWith();
  static TextStyle h6LabelGrey = AtivitiTypography.h6LabelWhite.copyWith(
    color: AtivitiColors.brownGrey,
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
    color: AtivitiColors.scarlet,
    letterSpacing: .07,
  );
  static TextStyle infoGreen = AtivitiTypography.infoRed.copyWith(
    color: Color(0xff28aa08),
  );
  static TextStyle h6LabelBlue = AtivitiTypography.infoRed.copyWith(
    color: AtivitiColors.dusk,

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
