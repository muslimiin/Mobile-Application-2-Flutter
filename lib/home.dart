import 'package:flutter/material.dart';

class PageNavBarMenu extends StatefulWidget {
  @override
  _PageNavBarMenuState createState() => _PageNavBarMenuState();
} 

class _PageNavBarMenuState extends State<PageNavBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Menu'),
            ),
            Divider(),
            ListTile(
              title: Text('About'),
              trailing: Icon(Icons.info),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/tentang');
              },
            ),
            ListTile(
              title: Text('Contact'),
              trailing: Icon(Icons.phone),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/kontak');
              },
            ),
            ListTile(
              title: Text('Message'),
              trailing: Icon(Icons.message),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/pesan');
              },
            ),
            ListTile(
              title: Text('Exit'),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/exit');
              },
            ),
          ],
        ),
      ),
      body: new Container(
      child: new Center(
        child: new ListView(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(10.0)),
            new Image.asset(
              "assets/home.jpg",
              height: 400.0,
              width: 300.0,
            ),
            Text("Selamat Datang", textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize:
                40.0)),
            SizedBox(height: 15.0),
            Text("Ternak Bebek Pak Sandoli", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0)),
            SizedBox(height: 15.0),
            Text("Menyediakan Bebek potong, Telor asin dan Telor mentah.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13.0)),
          ],
        ),
       ),
      ),
    );
  }
}