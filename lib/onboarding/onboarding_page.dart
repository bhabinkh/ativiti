import 'package:ativiti/themes/colors.dart';
import 'package:ativiti/themes/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _currentIndex;

  List<String> _locale;
  var _dropdownValue;

  final TextStyle _loginTextStyle = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontSize: 16,
    height: 1.43,
    fontWeight: FontWeight.w600,
  );

  PageController _pageController;

  @override
  void initState() {
    _currentIndex = 0;
    _pageController = PageController(initialPage: _currentIndex);
    _locale = ['English', 'French'];
    _dropdownValue = _locale[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(
                right: 28.0, left: 28, bottom: 25, top: 40),
            child: Column(
              children: <Widget>[
                _localeMenu(),
                Expanded(
                  child: PageView.builder(
                    itemCount:
                        OnBoardingPageItemModel.getOnBoardingList().length,
                    controller: _pageController,
                    onPageChanged: (position) {
                      setState(() {
                        _currentIndex = position;
                      });
                    },
                    itemBuilder: (context, position) {
                      return Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: _OnBoardingPageItem(OnBoardingPageItemModel
                            .getOnBoardingList()[position]),
                      );
                    },
                  ),
                ),
                _dots(),
                SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(flex: 3, child: _loginButton()),
                    SizedBox(width: 16),
                    Expanded(flex: 5, child: _signUpButton()),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton() => Container(
        width: 120,
        child: OutlineButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          borderSide: BorderSide(color: AtivitiColors.black, width: 1.5),
          child: Container(child: Text('Log in', style: _loginTextStyle)),
        ),
      );

  Widget _signUpButton() => Container(
        width: 300,
        child: RaisedButton(
          elevation: 0,
          highlightElevation: 0,
          onPressed: () {},
          color: AtivitiColors.black,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                  child: Text(
                'Sign up for free',
                textAlign: TextAlign.center,
                style: _loginTextStyle.copyWith(color: AtivitiColors.white),
                maxLines: 1,
              )),
              SizedBox(width: 16),
              Icon(Icons.arrow_right, size: 14, color: AtivitiColors.white),
            ],
          ),
        ),
      );

  Widget _localeMenu() {
    return Container(
      width: 172,
      child: InputDecorator(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AtivitiColors.brownGrey, width: 1)),
        ),
        child: DropdownButton<String>(
          underline: Container(),
          value: _dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              _dropdownValue = newValue;
            });
          },
          items: _locale.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Container(
                width: 112,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SvgPicture.asset('assets/Icons/england.svg'),
                    SizedBox(width: 10),
                    Text(value),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _dots() {
    return Container(
      height: 9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: OnBoardingPageItemModel.getOnBoardingList().length,
        itemBuilder: (context, index) {
          return Container(
            width: 9,
            height: 9,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: (_currentIndex == index)
                  ? AtivitiColors.coralPink
                  : Color(0XFFEEEDEE),
              borderRadius: BorderRadius.circular(9),
            ),
          );
        },
      ),
    );
  }
}

class _OnBoardingPageItem extends StatelessWidget {
  final OnBoardingPageItemModel item;
  final TextStyle _titleStyle = TextStyle(
    fontFamily: 'IBMPlexSans',
    fontWeight: FontWeight.bold,
    fontSize: 20,
    height: 1.2,
  );
  final TextStyle _bodyStyle = AtivitiTypography.paragraphContentGrey;

  _OnBoardingPageItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(this.item.imgURL),
        SizedBox(height: 12),
        Text(this.item.title, style: _titleStyle),
        SizedBox(height: 28),
        Text(this.item.body, style: _bodyStyle, textAlign: TextAlign.center),
      ],
    );
  }
}

class OnBoardingPageItemModel {
  String imgURL;
  String title;
  String body;

  OnBoardingPageItemModel(
      {@required this.imgURL, @required this.title, @required this.body})
      : assert(imgURL != null && title != null && body != null);

  static List<OnBoardingPageItemModel> getOnBoardingList() {
    return [
      OnBoardingPageItemModel(
        imgURL: 'assets/images/explore.svg',
        title: 'Explore',
        body: 'Explore Lorem Ipsum HSDf as af asdfksdaljf sa adf ss asdf',
      ),
      OnBoardingPageItemModel(
        imgURL: 'assets/images/explore.svg',
        title: 'Book',
        body: 'Book Lorem Ipsum HSDf as af asdfksdaljf sa adf ss asdf',
      ),
      OnBoardingPageItemModel(
        imgURL: 'assets/images/explore.svg',
        title: 'Access',
        body: 'Access Lorem Ipsum HSDf as af asdfksdaljf sa adf ',
      ),
    ];
  }
}
