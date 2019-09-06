import 'package:ativiti/components/box-components/BoxNewActivityPromo.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BoxNewActivityPromo(
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut mollis iaculis diam. Lorem ipsum dolor sit amet …',
            imageUrl: "",
            promotionName: 'Summer Pormotion',
            subsciptionCharge: 40,
          ),
        ),
      ),
    );
  }
}
