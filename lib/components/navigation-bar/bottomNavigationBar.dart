import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // TODO check the active color
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [
              _currentIndex * 0.2,
              _currentIndex * 0.2,
              (_currentIndex + 1) * 0.2,
              (_currentIndex + 1) * 0.2
            ],
            colors: [
              Colors.transparent,
              AtivitiColors.coralPink,
              AtivitiColors.coralPink,
              Colors.transparent,
            ],
          )),
        ),
        BottomNavigationBar(
          backgroundColor: AtivitiColors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            print(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                AtivitiIcons.homeActive,
                size: 18,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                AtivitiIcons.agenda,
                size: 18,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                AtivitiIcons.qr,
                size: 18,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                AtivitiIcons.feeds,
                size: 18,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                AtivitiIcons.profile,
                size: 18,
              ),
              title: Text(''),
            ),
          ],
        ),
      ],
    );
  }
}
