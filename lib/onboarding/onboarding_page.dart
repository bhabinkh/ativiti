import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  Widget _loginButton = Container(child: Text('Login'));
  Widget _signUpButton = Container(child: Text('SignUp'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _localeMenu(),
            _OnBoardingPageItem(OnBoardingPageItemModel.getOnBoardingList()[0])
          ],
        ),
      ),
    );
  }

  Widget _localeMenu() {
    return Container(child: Text('Locale English'));
  }

  Widget _dots() {
    return Row(
      children: <Widget>[],
    );
  }
}

class _OnBoardingPageItem extends StatelessWidget {
  final OnBoardingPageItemModel item;
  final TextStyle _titleStyle = TextStyle();
  final TextStyle _bodyStyle = TextStyle();

  _OnBoardingPageItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(this.item.imgURL),
        Text(this.item.title, style: _titleStyle),
        Text(this.item.body, style: _bodyStyle),
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
          imgURL: 'test.svg',
          title: 'Explore',
          body: 'Helalkdjs flas aksdfj lasdkfj lasdjfas'),
      OnBoardingPageItemModel(
          imgURL: 'test.svg',
          title: 'Book',
          body: 'Helalkdjs flas aksdfj lasdkfj lasdjfas'),
      OnBoardingPageItemModel(
          imgURL: 'test.svg',
          title: 'Access',
          body: 'Helalkdjs flas aksdfj lasdkfj lasdjfas'),
    ];
  }
}
