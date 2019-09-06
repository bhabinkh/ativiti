import 'package:flutter/material.dart';

import 'components/box-components/BoxActivityWeb.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BoxActivityWeb(
            activity: 'Bowling',
            asset: '',
            location: '1003, Lausanne',
            rating: 4.8,
            place: 'Bowland Lausanne-Flon',
            date: '23 mars 2019',
            timeFrom: '12h00',
            hasOpenClose: true,
            timeTo: '12h30',
          ),
        ),
      ),
    );
  }
}
