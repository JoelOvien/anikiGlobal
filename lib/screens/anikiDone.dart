// import 'package:flutter/material.dart';

// ////THE ICONS AND LABEL FOR THE VISUAL SEARCH PAGE
// var icons = <Widget>[
//   Icon(Mdi.glassWine, size: 50),
//   Icon(Mdi.parking, size: 50),
//   Icon(Mdi.wifi, size: 50),
//   Icon(Icons.fitness_center, size: 50),
//   Icon(Mdi.swim, size: 50),
//   Icon(Mdi.food, size: 50),
//   Icon(Mdi.airConditioner, size: 50),
//   Icon(Mdi.desk, size: 50),
//   Icon(Mdi.fridge, size: 50),
// ];
// var label = [
//   "Bar",
//   "Parking Lot",
//   "WiFi",
//   "Gym",
//   "Swimming Pool",
//   "Restaurant",
//   "AC",
//   "Desk",
//   "Refrigerator",
// ];

// ////VISUAL SEARCH SCREEN(WIDGET BUILD)
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.white,
//     appBar: AppBar(
//       centerTitle: true,
//       elevation: 0,
//       backgroundColor: Colors.white,
//       title: Text(
//         "Hotel Page",
//         style: TextStyle(color: Colors.black),
//       ),
//     ),
//     body: SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 250,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: ExactAssetImage(
//                         "assets/astronomy-backlit-constellation-1421903.jpg"),
//                   ),
//                 ),
//                 // child: Placeholder(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Hotel Presidential",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "12 obiwali road Nkpolu Rumuigbo, Port Harcourt ,\n Rivers State",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(30.0, 10, 8, 8),
//             child: Text(
//               "Hotel Information",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             child: GridView.builder(
//               gridDelegate:
//                   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//               itemCount: icons.length,
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
//                   child: Container(
//                     height: 30,
//                     width: 30,
//                     child: Column(
//                       children: [
//                         icons[index],
//                         Text(label[index]),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Divider(color: Colors.black),
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Hotel Description\n",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "Base Hotels is a 2-Star hotel located at No 33,NTA road, Mgbuoba,"
//                     "Rumuokwuta, Port Harcourt.\n \n"
//                     "Rooms at the Base Hotels come in Single Suite, Single Unit, Double and Double Suite"
//                     "categories. Each room boasts of facilities such as flat screen televison set with access to a wide variety of local"
//                     "and international channels, wardrobe, air conditioning, armchair and table,"
//                     "ensuite bathroom and shower plus a refrigerator",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Divider(color: Colors.black),
//           Padding(
//             padding: EdgeInsets.all(15),
//             child: Text(
//               "Book rooms in this hotel online",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// ///THIS IS THE WIDGET WHICH CONTAINS THE STARS
// Widget drawStars() {
//   return Column(
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Text(" "),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//         ],
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Text("      "),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//         ],
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Text("           "),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//         ],
//       ),
//       Row(
//         children: [
//           Text("                "),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//           Icon(
//             Icons.star,
//             color: Color(0xFFFFE600),
//             size: 15,
//           ),
//         ],
//       ),
//       Row(
//         children: [
//           Row(
//             children: [
//               Text("                     "),
//               Icon(
//                 Icons.star,
//                 color: Color(0xFFFFE600),
//                 size: 15,
//               ),
//             ],
//           ),
//           SizedBox(width: 50),
//           Text("0"),
//         ],
//       ),
//     ],
//   );
// }
