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
        preferredSize: const Size.fromHeight(50.0),
        // ignore: sort_child_properties_last
        child: SafeArea(
          child: Container(
            width: double.infinity,
            // height: 100,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: AppBar(
              shape: const RoundedRectangleBorder(
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(4),
                  //     topRight: Radius.circular(4),
                  //     bottomLeft: Radius.circular(5),
                  //     bottomRight: Radius.circular(5)),
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
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(top: 0),
          child: Column(
            children: [
              Container(
                height: 70,
                color: KColor.K_app,
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: KColor.K_app,
                      border: Border.all(
                        color: KColor.K_app.withOpacity(0.50),
                      )),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      hintText: 'Search here...',
                      contentPadding: EdgeInsets.all(15),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
                          const EdgeInsets.only(right: 50, top: 5, left: 10),
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
                              color: Colors.black54,
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
                length: 5,
                child: Column(children: [
                  Container(
                    child: const TabBar(
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                        labelColor: Color(0xfffe5c45),
                        isScrollable: true,
                        indicatorColor: Colors.transparent,
                        unselectedLabelColor: Color(0xffe6e5ee),
                        tabs: [
                          Tab(text: 'T-Shirts'),
                          Tab(text: 'Jeans'),
                          Tab(text: 'Blazers'),
                          Tab(text: 'Sneakers'),
                          Tab(text: 'Jeans'),
                        ]),
                  ),
                ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'New Collections',
                          style:
                              TextStyle(color: Color(0xfffe5c45), fontSize: 20),
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        const Text(
                          'Show All',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        
                      ],
                    ),
                  ),
                  Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(8),
                                  height: 200,
                                  width: 200,
                                  //color: flavorColor,
                                  child: Text('item'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(8),
                                  height: 200,
                                  width: 200,
                                  // color: flavorColor,
                                  child: Text('item'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(8),
                                  height: 200,
                                  width: 200,
                                  //color: flavorColor,
                                  child: Text('item'),
                                ),
                                Container(
                                  margin: EdgeInsets.all(8),
                                  height: 200,
                                  width: 200,
                                  //color: flavorColor,
                                  child: Text('item'),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  height: 200,
                                  width: 200,
                                  //color: flavorColor,
                                  child: const Text('item'),
                                ),
                              ],
                            ),
                          ),
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
