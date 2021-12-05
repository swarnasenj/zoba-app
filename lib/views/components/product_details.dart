import 'package:flutter/material.dart';
import 'package:zoba_app/constant/app_constant.dart';
import 'package:zoba_app/constant/asset_path.dart';
import 'package:zoba_app/style/color.dart';

class ProductDetails extends StatefulWidget {
  final productItem;
  ProductDetails(this.productItem);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List sizeList = [
    {"size": "XS", "isClicked": true},
    {"size": "L", "isClicked": false},
    {"size": "M", "isClicked": false},
    {"size": "XL", "isClicked": false},
    
  ];

  int ind = -1;
  bool isWishList = false;

  @override
  initState() {
    super.initState();
    for (int i = 0; i < AppConstant.wishList.length; i++) {
      if (widget.productItem["id"] == AppConstant.wishList[i]["id"]) {
        isWishList = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                        color: KColor.K_app,
                        image: DecorationImage(
                          image: AssetImage(AssetPath.bag),
                        )),
                    child: SafeArea(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.arrow_back,
                                size: 20,
                                color: Colors.black,
                              ),
                              const Icon(
                                Icons.shopping_bag,
                                size: 20,
                                color: Colors.black,
                              )
                            ],
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 195),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('EGP 250',
                              style: TextStyle(color: KColor.K_sale,fontSize: 20),),
                              Icon(
                                isWishList
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: KColor.K_sale,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Text('Zarau Shoes',
                          style: TextStyle(color: Colors.black38,fontSize: 12,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 5,),
                          const Text('Girl\'s Sneaker Shoes',style: TextStyle(color: Colors.black,fontSize: 18),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(sizeList.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          ind = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                            color: ind == index
                                ? KColor.K_app
                                : KColor.K_sale),
                        child: Text("${sizeList[index]["size"]}", style: TextStyle(fontSize: 12),),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
