import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double screenHeight(BuildContext context,
      {double dividedBy = 1, double reducedBy = 0.0}) {
    return (screenSize(context).height - reducedBy) / dividedBy;
  }

  double screenWidth(BuildContext context,
      {double dividedBy = 1, double reducedBy = 0.0}) {
    return (screenSize(context).width - reducedBy) / dividedBy;
  }

  double screenHeightExcludingToolbar(BuildContext context,
      {double dividedBy = 1}) {
    return screenHeight(context,
        dividedBy: dividedBy, reducedBy: kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SCHOODLE',
              style: TextStyle(
                  fontFamily: 'PoppinsEx',
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal)),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Column(children: <Widget>[
                Container(
                  height: screenHeightExcludingToolbar(context, dividedBy: 1.5),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 300,
                        height: 100,
                      ),
                      Container(
                        color: Colors.blue[200],
                        width: 300,
                        height: 300,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText: 'Enter your username'),
                                  initialValue: ' ',
                            ),
                            TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                  labelText: 'Enter your password'),
                                  initialValue: ' ',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.yellow[200],
                    height: screenHeightExcludingToolbar(context, dividedBy: 5))
              ]),
            ),
            // Container(
            //   width: 80.0,
            //   color: Colors.purple[300],
            // )
          ],
        ),
      ),
    );
  }
}
