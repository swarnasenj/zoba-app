// import 'package:flutter/material.dart';

// class Appbar extends StatelessWidget {
//   const Appbar({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(100.0),
//         child: SafeArea(
//           child: Container(
//             width: double.infinity,
//            // height: 100,
//             margin: const EdgeInsets.only(left: 10, right: 10),
//             child: AppBar(
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(5),
//                     topRight: Radius.circular(5),
//                     bottomLeft: Radius.circular(5),
//                     bottomRight: Radius.circular(5)),
//               ),
//               elevation: 0,
//               backgroundColor: KColor.K_app,
//               title: Container(   
//                   margin: const EdgeInsets.only(top: 0),            
//                   child: Column(
//                     children: [
//                       Center(
//                         child: RichText(
//                           textAlign: TextAlign.center,
//                           text: const TextSpan(                         
//                             text: 'Zoba',
//                             style: TextStyle(
//                                 color: KColor.K_zoba,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold),
//                             children: <TextSpan>[
//                               TextSpan(
//                                   text: '.',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: Color(0xfffe5c45),
//                                       fontSize: 25)),
//                             ],
//                           ),
//                         ),
//                       ),
                     
//                        Container(
//                       //  child: const Icon(Icons.search)),
//                       // Container(                           
//                       //   padding: const EdgeInsets.only(top: 10),
//                       //   height: 50,
//                       //   color: Colors.white,
//                       //   child: const TextField(
//                       //     decoration: InputDecoration(
//                       //       hintText: 'Search a item...',
//                       //       hintStyle: TextStyle(
//                       //         color: Colors.white,
//                       //         fontSize: 15,
//                       //         fontStyle: FontStyle.italic,
//                       //       ),
//                       //       border: InputBorder.none,
//                       //     ),
//                       //     style: TextStyle(
//                       //       color: Colors.white,
//                       //     ),
                                                                                     
//                       //   ),
//                        ),
//                     ],
//                   ),
//                 ),
             
//               actions: [
//                 Container(
//                   margin: const EdgeInsets.only(right: 10),
//                   child: const Icon(
//                     Icons.shopping_bag,
//                     size: 20,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
      
//     );
//   }
// }