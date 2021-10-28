import 'package:flutter/material.dart';
import 'package:muslim_app/screens/main_entrance.dart';
void main() => runApp(MuslimPro());

class MuslimPro extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MainEntranceScreen.id,
      routes: {
        MainEntranceScreen.id: (context) => MainEntranceScreen(),
      },
    );
  }
}
