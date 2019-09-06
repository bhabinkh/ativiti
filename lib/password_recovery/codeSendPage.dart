import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';
import 'package:ativiti/password_recovery/codeVerificationPage.dart';

class PasswordRecoveryPage extends StatelessWidget {
  PasswordRecoveryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AtivitiColors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_left,
                  size: 18,
                  color: AtivitiColors.black,
                ),
                Text('Back',
                    style: AtivitiTypography.h6LabelBlack.copyWith(height: 1)),
              ],
            ),
          )),
      backgroundColor: AtivitiColors.white,
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(right: 25.0, left: 25, bottom: 25, top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  "Forgot Password",
                  style: AtivitiTypography.iBMPlexSansMedium,
                ),
              ),
              SizedBox(height: 50.0),
              Text(
                'Please enter your email address',
                style: AtivitiTypography.textInputFieldValid,
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'example@example.com',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AtivitiColors.brownGrey)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AtivitiColors.brownGrey)),
                  suffixIcon: Icon(AtivitiIcons.validate,
                      size: 18, color: AtivitiColors.coralPink),
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Component.primaryButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: AtivitiTypography.h5TitleWhiteBold
                          .copyWith(height: 1, fontSize: 16),
                    )),
              ),
              SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Component.primaryOutlineButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: AtivitiTypography.h5TitleBold
                          .copyWith(height: 1, fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Component {
  static RaisedButton primaryButton({Widget child, Function onPressed}) =>
      RaisedButton(
        onPressed: onPressed,
        elevation: 0,
        highlightElevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: child,
        ),
        color: AtivitiColors.black,
      );

  static RaisedButton primaryOutlineButton(
          {Widget child, Function onPressed}) =>
      RaisedButton(
        onPressed: onPressed,
        elevation: 0,
        highlightElevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: child,
        ),
        color: AtivitiColors.white,
      );
}
