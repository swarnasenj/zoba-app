import 'package:flutter/material.dart';
import '../../style/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Zoba', style: TextStyle(color: KColor.K_zoba, fontSize: 12),),
        
      ),
      drawer: Drawer(),
    );
  }
}
