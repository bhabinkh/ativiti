import 'package:ativiti/components/button-components/buttons.dart';
import 'package:ativiti/components/navigation-bar/bottomNavigationBar.dart';
import 'package:ativiti/themes/ativiti_icons_icons.dart';
import 'package:ativiti/themes/colors.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: ButtonPrimarySearch(
          buttonLabel: 'Sessions',
          onPressedCallback: () {
            print('object');
          },
        ),
      ),
    );
  }
}
