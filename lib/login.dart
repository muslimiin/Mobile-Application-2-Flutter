// import package flutter agar program berjalan dengan baik
import 'package:flutter/material.dart';
// import package register agar tersambung dan bisa mengarah ke package register
import 'register.dart';
// import package flutter toast untuk membuat toast
import 'package:fluttertoast/fluttertoast.dart';
// import package home agar tersambung dan bisa mengarah ke package home
import 'home.dart';
import 'tentang.dart';
import 'kontak.dart';

// membuat class login page agar bisa dipanggil 
class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

// membuat tampilan logo pada page login
class _LoginPageState extends State<LoginPage> {
  //final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  //TextEditingController usernameController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();
  //String username = "", password = "";
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

// membuat tampilan dan pengaturan kolom username untuk login
    final user = TextFormField(
      autofocus: false,
      //controller: usernameController,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

// membuat tampilan dan pengaturan kolom password untuk login
    final pass = TextFormField(
      autofocus: false,
      //controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

// membuat tombol login dan pengaturan tombol untuk login
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Fluttertoast.showToast(
                msg: "Anda Berhasil Login",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.green,
                textColor: Colors.black,
                fontSize: 16.0
            );
            //setState(() {
                //username = usernameController.text;
                //password = passwordController.text;
            //});
            //Navigator.push(context, 
                //MaterialPageRoute(
                    //builder: (context) => 
                    //PageNavBarMenu("$username"),
                //),
            //);
            Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return PageNavBarMenu();
                  })
                );
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

// membuat tombol register dan pengaturan tombol untuk register dan mengarah ke package register
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
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => RegisterPage())
            );
          },
          color: Colors.lightBlueAccent,
          child: Text('Register', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

// pengaturan background color, logo, kolom username, kolom password dan tombol pada tampilan login
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            user,
            SizedBox(height: 8.0),
            pass,
            SizedBox(height: 24.0),
            loginButton,
            SizedBox(height: 0.0),
            registerButton
          ],
        ),
      ),
    );
  }
}
