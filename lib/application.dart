import 'package:ativiti/components/navigation-bar/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

import 'components/box-components/box_components.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: MapBox(
          bookingType: BookingType.DIRECT_BOOKING,
          endTime: '12:45',
          location: '1003, Lausanne',
          place: 'Fit center',
          hasOpensAtClosesAt: true,
          startTime: '12:00',
          title: "Cardio Sculpt",
        ),
      ),
    );
  }
}
