import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new ListView(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Image.asset(
              "assets/person.jpg",
              height: 400.0,
              width: 400.0,
            ),
            Text("Muslimin", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0)),
            Text("18.240.0054", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0))
          ],
        ),
      ),
    );
  }
}