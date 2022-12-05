import 'package:flutter/material.dart';
import 'person.dart';
import 'contact_me.dart';

class PageKontak extends StatefulWidget {
@override
_PageKontakState createState() => _PageKontakState();
} 

class _PageKontakState extends State<PageKontak> {
  int currentIndex = 0;
  final List<Widget> _listColorMenu = [
    PageTentang(),
    Person()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        backgroundColor: Colors.blueAccent,
      ),
      body: _listColorMenu[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Contact Me'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person'
          )
        ],
      ),
    );
  } 
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}