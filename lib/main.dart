<<<<<<< HEAD
import 'package:ativiti/onboarding/onboarding_page.dart';
import 'package:ativiti/password_recovery/password_recovery_page.dart';
=======
import 'package:ativiti/application.dart';
>>>>>>> cbe68d6b7fcf2b3872fe1ad000ec6b205a8bc3b8
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasswordRecoveryPage(),
    );
=======
    return Application();
>>>>>>> cbe68d6b7fcf2b3872fe1ad000ec6b205a8bc3b8
  }
}
