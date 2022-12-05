// import properti flutter agar program berjalan dengan baik
import 'package:flutter/material.dart';
// import package login agar tersambung dan bisa menjalankan dengan package login
import 'login.dart';
// import package register agar tersambung dan bisa menjalankan dengan package register
import 'register.dart';
import 'home.dart';
import 'tentang.dart';
import 'kontak.dart';
import 'pesan.dart';

void main() => runApp(MyApp());

// konfigurasi untuk menyambungkan antara halaman login dan halaman register
class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    RegisterPage.tag: (context) => RegisterPage(),
  };

// memberi nama aplikasi dan pengaturan font serta warna background
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pertemuan 13',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/home' : (BuildContext context) => PageNavBarMenu(),
        '/tentang' : (BuildContext context) => PageTentang(),
        '/kontak' : (BuildContext context) => PageKontak(),
        '/pesan' : (BuildContext context) => PagePesan(),
        '/exit' : (BuildContext context) => LoginPage()
      },
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
    );
  }
}
