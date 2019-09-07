import 'package:ativiti/components/button-components/buttons.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(38.0),
          child: ButtonPrimarySearch(
            buttonLabel: 'Sessions',
            onPressedCallback: () {
              print('object');
            },
          ),
        ),
      ),
    );
  }
}
