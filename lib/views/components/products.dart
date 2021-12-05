import 'package:flutter/material.dart';
import 'package:zoba_app/constant/app_constant.dart';
import 'package:zoba_app/views/components/product_details.dart';

import '../../constant/asset_path.dart';
import '../../style/color.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Container(
          margin: const EdgeInsets.only(left: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
             Row(
              children:
                  List.generate(AppConstant.productList.length, (int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetails(
                                AppConstant.productList[index])));
                  },
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          AppConstant.wishList
                              .add(AppConstant.productList[index]);
          
                          print(AppConstant.wishList);
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: KColor.K_app,
                                  borderRadius: BorderRadius.circular(3)),
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                "${AppConstant.productList[index]["image"]}",
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(
                                  left: 70,
                                ),
                                alignment: Alignment.topRight,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_outline,
                                      size: 14,
                                    ))),
                          ],
                        ),
                      ),
                      
                      InkWell(
                        onTap: (){
                           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetails(
                                context)));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${AppConstant.productList[index]["name"]}",
                                style:
                                    TextStyle(color: KColor.K_text, fontSize: 14),
                              ),
                              Text(
                                "${AppConstant.productList[index]["category"]}",
                                style:
                                    TextStyle(color: KColor.K_text, fontSize: 14),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\$${AppConstant.productList[index]["price"]}",
                                style:
                                    TextStyle(color: KColor.K_sale, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
            ],
          )),
    );
  }
}
