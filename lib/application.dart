import 'package:ativiti/agenda/agendas.dart';
import 'package:ativiti/components/empty_message_page.dart';
import 'package:ativiti/components/navigation-bar/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: AgendasPage(),
    );
  }
}
