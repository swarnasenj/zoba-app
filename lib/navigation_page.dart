import 'package:flutter/material.dart';
import 'package:zoba_app/views/pages/drawer_page.dart';
import 'package:zoba_app/views/pages/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({ Key? key }) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();

  @override
  Size get preferredSize => throw UnimplementedError();
}

class _NavigationPageState extends State<NavigationPage> {

  final List pageList = [
    const HomePage(),
    // ProfilePage(),
    // Container(child: Text("P3")),
    // Container(child: Text("P4")),
    // Container(child: Text("P5")),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(),
      drawer: DrawerPage(
        func: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),

      body: pageList[selectedIndex],
      
    );
  }
}