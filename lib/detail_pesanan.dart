import 'package:flutter/material.dart';
import 'pesan.dart';
class PagePesanan extends StatelessWidget {
    String msg;
    //wajib diisi
    PagePesanan(this.msg);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Detail Pesanan"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
                Text(msg, style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 15),
                Text("Terima Kasih.", textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize:30.0)),
                SizedBox(height: 15),
            ],
          ),
        ),
    );
  }
}