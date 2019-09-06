import 'package:flutter/material.dart';

import 'components/box-components/boxAttendees.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BoxAttendes(
            imageUrl: "null",
            attendeeName: 'Marc M.',
          ),
        ),
      ),
    );
  }
}
