import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
   final func;
  DrawerPage({this.func});

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/men.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
