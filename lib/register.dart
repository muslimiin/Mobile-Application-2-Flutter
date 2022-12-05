// import package flutter agar program berjalan dengan baik
import 'package:flutter/material.dart';
// import package giffy dialog untuk mengampilkan dialog
import 'package:giffy_dialog/giffy_dialog.dart';

// membuat class register page agar bisa dipanggil 
class RegisterPage extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

// membuat tampilan logo pada page register
class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.jpg'),
      ),
    );

// membuat tampilan dan pengaturan kolom username untuk register
    final username = TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

// membuat tampilan dan pengaturan kolom password untuk register
    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

// membuat tampilan dan pengaturan kolom konfirmasi password untuk register
    final konfirmasipassword = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Konfirmasi Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

// membuat tombol register dan pengaturan tombol untuk register
    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
              showDialog(
                context: context,
                builder: (_) => NetworkGiffyDialog(
                    image: Image.asset('assets/save.gif'),
                    title: Text(
                        "Simpan Data",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                        ),
                    ),
                    description: Text(
                        "Apakah anda yakin akan menyimpan data ?",
                        textAlign: TextAlign.center,
                    style: TextStyle(),
                    ),
                onOkButtonPressed: () {
                    Navigator.of(context).pushNamed('/exit');
                },
                ),
              );
          },
          color: Colors.lightBlueAccent,
          child: Text('Register', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

// membuat tombol kembali dan pengaturan tombol untuk kembali
    final backButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.lightBlueAccent,
          child: Text('Kembali', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

// pengaturan background color, logo, kolom username, kolom password dan tombol pada tampilan register
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            username,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 8.0),
            konfirmasipassword,
            SizedBox(height: 24.0),
            registerButton,
            SizedBox(height: 0.0),
            backButton
          ],
        ),
      ),
    );
  }
}
