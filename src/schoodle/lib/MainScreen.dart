import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SCHOODLE',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.display1,
              fontSize: 40,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
