import 'package:flutter/material.dart';

import '../../style/color.dart';
//import '../pages/home_page.dart';
import 'drawer_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List pageList = [
    //const HomePage(),
    // ProfilePage(),
    // PostNews(),
    // NewsList(),
    // OurTeam(),
    // AboutUs(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KColor.K_background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            // height: 100,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: AppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
              ),
              elevation: 0,
              backgroundColor: KColor.K_app,
              title: Container(
                margin: const EdgeInsets.only(top: 0),
                child: Column(
                  children: [
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: 'Zoba',
                          style: TextStyle(
                              color: KColor.K_zoba,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: '.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xfffe5c45),
                                    fontSize: 25)),
                          ],
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
              
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    Icons.shopping_bag,
                    size: 20,
                  ),
                ),
              ],
              
              
            ),
            
          ),
        ),
      ),
      drawer: DrawerPage(
        func: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                height: MediaQuery.of(context).size.height * .2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff79588).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(right: 40, top: 5, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'SALE 30%',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xfffe5c45),
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'FOR EVERY THING',
                            style: TextStyle(
                              color: Color(0xfffe5c45),
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          const Text(
                            'Shop Now',
                            style: TextStyle(
                              color: Color(0xfffe5c45),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/bag.png',
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      Container(
                        child: const TabBar(
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                            labelColor: Color(0xfffe5c45),
                            isScrollable: true,
                            unselectedLabelColor: Color(0xffe6e5ee),
                            tabs: [
                              Tab(text: 'T-Shirts'),
                              Tab(text: 'Jeans'),
                              Tab(text: 'Blazers'),
                              Tab(text: 'Sneakers'),
                            ]),
                      ),
                    ],
                  ),
                  ),
                  // Container(
                  //   child: ,
                  // )
            ],
          ),
        ),
      ),
    );
  }
}
