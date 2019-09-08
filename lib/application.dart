import 'package:ativiti/components/navigation-bar/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

import 'components/box-components/box_components.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: BoxActivityWeb(
          activity: 'Bowling',
          hasOpenClose: false,
          timeFrom: '12h00',
          timeTo: '12h30',
          asset: "",
          date: '1st session Feb 24, 2019',
          location: '27 rue de la mousse, 1003, Lausanne',
          place: 'Bowland Lausanne-Flon',
          // onCheckoutCallback: ()_,
        ),
      ),
    );
  }
}
