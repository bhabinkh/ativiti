import 'package:ativiti/components/box-components/BlocActivity.dart';
import 'package:flutter/material.dart';

import 'components/box-components/boxActivity.dart';
import 'components/box-components/mapBox.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BoxActivity(
            activity: "activity",
            asset: "",
            boxType: BoxType.HALF,
            location: "locatgio",
            place: "place",
            rating: 1.3,
            description: "lorem",
          ),
        ),
      ),
    );
  }
}
