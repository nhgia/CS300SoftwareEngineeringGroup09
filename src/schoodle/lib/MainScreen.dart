import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SCHOODLE',
            style: TextStyle(fontFamily: 'PoppinsEx', 
            
            fontSize: 40,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal
            )
          ),
        ),
      ),
    );
  }
}