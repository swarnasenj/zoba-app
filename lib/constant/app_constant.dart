import 'package:zoba_app/models/products_model.dart';

class AppConstant {
  static List<Products> wishList = [];
  static List<Products> productsList = [
    Products(
        id: 1,
        name: 'Men\'s OXFORD',
        image: 'assets/images/men1.png',
        category: 'Bag',
        price: 18.20),
    Products(
        id: 2,
        name: 'Girl Leather',
        image: 'assets/images/girl3.png',
        category: 'Bag',
        price: 54.20),
  ];

  // TODO
  // ai list take uporer 3 number line er list a data add kore diben.
  // upore 2 ta data add kora ase. oirokom kore.
  //ai list er ar dorkar nai.
  static List productList = [
    {
      "id": 1,
      "image": "assets/images/men1.png",
      "name": "Men's OXFORD",
      "category": "SHIRT",
      "price": 35.01
    },
    {
      "id": 2,
      "image": "assets/images/girl3.png",
      "name": "Girl Leather",
      "category": "Bag",
      "price": 18.20
    },
    {
      "id": 3,
      "image": "assets/images/men1.png",
      "name": "Men's OXFORD",
      "category": "SHIRT",
      "price": 35.01
    },
    {
      "id": 4,
      "image": "assets/images/girl3.png",
      "name": "Girl Leather",
      "category": "Bag",
      "price": 18.20
    },
    {
      "id": 5,
      "image": "assets/images/men1.png",
      "name": "Men's OXFORD",
      "category": "SHIRT",
      "price": 35.01
    },
    {
      "id": 6,
      "image": "assets/images/girl3.png",
      "name": "Girl Leather",
      "category": "Bag",
      "price": 18.20
    },
  ];
}
