import 'package:flutter/material.dart';
import '../../style/color.dart';

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
                        style: TextStyle(fontSize: 20, color: KColor.K_text),
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
         
            const SizedBox(height: 15),
            ListTile(
              title: const Text('Home',style: TextStyle(fontSize: 16,color:KColor.K_sale),),
              leading: const Icon(Icons.home,color:KColor.K_sale),
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('New Collection',style: TextStyle(fontSize: 16, color: KColor.K_text),),
              leading: const Icon(Icons.flag),
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Categories',style: TextStyle(fontSize: 16, color: KColor.K_text),),
              leading: const Icon(Icons.shopping_cart),
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Notifications',style: TextStyle(fontSize: 16, color: KColor.K_text),),
              leading: const Icon(Icons.list),
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Setting',style: TextStyle(fontSize: 16,color: KColor.K_text),),
              leading: const Icon(Icons.settings),
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help',style: TextStyle(fontSize: 16, color: KColor.K_text),),
              leading: const Icon(Icons.location_on),
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            
            Container(
              margin: const EdgeInsets.only(top: 35),
              child: ListTile(
                title: const Text('logout',
                style: TextStyle(color: KColor.K_sale,fontSize: 16),),
                leading: const Icon(Icons.exit_to_app, color:KColor.K_sale,),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
        ],
      )),
    );
  }
}
