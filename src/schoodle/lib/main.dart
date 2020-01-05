import 'package:flutter/material.dart';
import 'MainScreen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schoodle',
      home: MainScreen(),
    );
  }
}