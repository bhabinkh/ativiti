<<<<<<< HEAD
import 'package:ativiti/profile/profile.dart';
=======
import 'package:ativiti/application.dart';
>>>>>>> d0ade5d2775bc3a9d93c501d7b93e6bd8fe08727
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
      home: Profile(),
    );
=======
    return Application();
>>>>>>> d0ade5d2775bc3a9d93c501d7b93e6bd8fe08727
  }
}
