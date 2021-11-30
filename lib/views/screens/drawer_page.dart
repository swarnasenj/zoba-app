import 'package:flutter/material.dart';
import 'package:zoba_app/style/color.dart';

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
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/men.jpg'),
                      ),
                      accountName: Text(
                        'ADAM TAWFIK',
                        style: TextStyle(fontSize: 20, color: Colors.black87),
                      ),
                      accountEmail: Text('jane.doe@gmail.com',
                      style: TextStyle(fontSize: 15, color: Colors.grey),),
                      decoration: BoxDecoration(
                        color: KColor.K_app,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
