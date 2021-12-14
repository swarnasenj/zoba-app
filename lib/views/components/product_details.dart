import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zoba_app/views/components/carousel.dart';

import '../../constant/app_constant.dart';
import '../../constant/rating.dart';
import '../../models/products_model.dart';
import '../../style/color.dart';

class ProductDetails extends StatefulWidget {
  final Products data;
  ProductDetails({required this.data});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List sizeList = [
    {"size": "XS", "isClicked": false},
    {"size": "L", "isClicked": false},
    {"size": "M", "isClicked": false},
    {"size": "XL", "isClicked": false},
  ];
  final CarouselController _controller = CarouselController();

  int _current = 0;
  List listPaths = [
    "assets/images/bag.png",
    "assets/images/girl3.png",
    "assets/images/bag.png",
  ];

  int ind = -1;
  bool isWishList = false;

  // @override
  initState() {
    super.initState();
    if (AppConstant.wishList.isNotEmpty) {
      final _wishList =
          AppConstant.wishList.where((e) => e.id == widget.data.id).toList();

      if (_wishList.isNotEmpty) {
        isWishList = true;
        print(_wishList.first);
      } else {
        isWishList = false;
      }
    }
  }

  late int _rating;
  List<Color> colors = [Colors.black, Colors.red, Colors.indigo, Colors.teal];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    color: KColor.K_app,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: Container(
                      margin: const EdgeInsets.only(top: 25),
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
                ),
                Container(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 25,
                                color: Colors.black,
                              )),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: const Icon(
                              Icons.shopping_bag,
                              size: 20,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 260),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'EGP 250',
                                  style: TextStyle(
                                      color: KColor.K_sale, fontSize: 20),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: KColor.K_background,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50),
                                        bottomLeft: Radius.circular(50),
                                        bottomRight: Radius.circular(50)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 12,
                                        //offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    isWishList
                                        ? Icons.favorite
                                        : Icons.favorite_outline,
                                    color: KColor.K_sale,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Zarau Shoes',
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Girl\'s Sneaker Shoes',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 175),
                                  alignment: Alignment.centerLeft,
                                  child: Rating((rating) {
                                    setState(() {
                                      _rating = rating;
                                    });
                                  }, 5),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        'COLOR',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: List.generate(
                                        4,
                                        (index) => Container(
                                          margin: EdgeInsets.only(right: 10),
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                              color: colors[index],
                                              borderRadius:
                                                  BorderRadius.circular(17)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: const Text(
                                        'SIZE',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: List.generate(sizeList.length,
                                          (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              ind = index;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                right: 3, top: 2),
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(17),
                                                color: ind == index
                                                    ? KColor.K_app
                                                    : KColor.K_sale),
                                            child: Text(
                                              "${sizeList[index]["size"]}",
                                              style:
                                                  const TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Products Description',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SingleChildScrollView(
                                    child: Text(
                                      'It is a long established fact that a reader will be is a long established It is a long established fact that a reader will be is a long established fact that a reader will be distracted by the readable content of this.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 10, right: 10, ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                onPressed: () {},
                                color: KColor.K_sale,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.shopping_cart,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    const Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
