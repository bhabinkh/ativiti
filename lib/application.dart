import 'package:ativiti/components/box-components/boxActivityHalf.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BoxActivity(
            boxType: BoxType.FULL,
            asset: "",
            activity: 'Bowling',
            location: '1003, Lausanne',
            place: 'Bowland Lausanne-Flon',
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut mollis iaculis diam. Lorem ipsum dolor sit amet …",
            rating: 4.8,
          ),
        ),
      ),
    );
  }
}
