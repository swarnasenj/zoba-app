import 'package:flutter/material.dart';
import '../../constant/app_constant.dart';

import '../../style/color.dart';
import 'product_details.dart';

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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetails(context)));
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
                                    padding: const EdgeInsets.only(
                                      left: 70,
                                    ),
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite_outline,
                                          size: 14,
                                        ))),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${AppConstant.productList[index]["name"]}",
                                  style: const TextStyle(
                                      color: KColor.K_text, fontSize: 14),
                                ),
                                Text(
                                  "${AppConstant.productList[index]["category"]}",
                                  style: const TextStyle(
                                      color: KColor.K_text, fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$${AppConstant.productList[index]["price"]}",
                                  style: const TextStyle(
                                      color: KColor.K_sale, fontSize: 13),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          )),
    );
  }
}
