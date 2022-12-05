import 'package:flutter/material.dart';

class PageTentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.blueAccent,
      ),
      body: new Container(
       child: new Center(
        child: new ListView(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            Text("Tentang Kami", textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize:
                40.0)),
            SizedBox(height: 20.0),
            Text("Ternak Bebek Pak Sandoli adalah sebuah usaha peternakan yang dikelola oleh perorangan dan terletak di pekalongan.", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0)),
          ],
         ),
       ),
      ),
    );
  }
}