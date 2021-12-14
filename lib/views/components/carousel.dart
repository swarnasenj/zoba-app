import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zoba_app/constant/rating.dart';
import '../../style/color.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController _controller = CarouselController();
  List sizeList = [
    {"size": "XS", "isClicked": false},
    {"size": "L", "isClicked": false},
    {"size": "M", "isClicked": false},
    {"size": "XL", "isClicked": false},
  ];

  int _current = 0;
  List listPaths = [
    "assets/images/bag.png",
    "assets/images/girl3.png",
    "assets/images/bag.png",
  ];
  int ind = -1;
  bool isWishList = false;
  late int _rating;
  List<Color> colors = [Colors.black, Colors.red, Colors.indigo, Colors.teal];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KColor.K_app,
        appBar: AppBar(
          backgroundColor: KColor.K_app,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.black,
              )),
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Icon(
                Icons.shopping_bag,
                size: 20,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
                    color: KColor.K_app,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.39,
                    child: Container(
                      margin: const EdgeInsets.only(top: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CarouselSlider(
                            carouselController: _controller,
                            options: CarouselOptions(
                              enlargeCenterPage: true,
                              enableInfiniteScroll: false,
                              autoPlayInterval: Duration(seconds: 2),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 2000),
                              onPageChanged: (index, reason) =>
                                  setState(() => _current = index),
                              autoPlay: false,
                            ),
                            items: listPaths
                                .map((e) => ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Column(
                                        children: [
                                          Stack(
                                            fit: StackFit.loose,
                                            children: <Widget>[
                                              Image.asset(
                                                e,
                                                width: 170,
                                                height: 170,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 65),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(3, (indexDots) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(_current),
                                  child: Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 6,
                                    width: _current == indexDots ? 25 : 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: _current == indexDots
                                          ? KColor.K_sale
                                          : Colors.grey,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 14, left: 14),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    ),
                    
                ),
              ],

            ),
            
            ),
            

          ],
        ),
        );
  }
}
