import 'package:flutter/material.dart';

class PageTentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
       child: new Center(
        child: new ListView(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            Text("Hubungi Kami", textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize:
                40.0)),
            SizedBox(height: 20.0),
            Text("Alamat : Jalan Otto Iskandardinata Gang 16 No 32 Pekalongan", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0)),
            SizedBox(height: 20.0),
            Text("No Telepon : 0823-2622-5295", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0)),
          ],
         ),
       ),
      ),
    );
  }
}