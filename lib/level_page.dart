// import 'package:flutter/material.dart';
//
// import 'game_play.dart';
//
//
// class Level_page extends StatefulWidget {
//   const Level_page({Key? key}) : super(key: key);
//
//   @override
//   State<Level_page> createState() => _Level_pageState();
// }
//
// class _Level_pageState extends State<Level_page> {
//   int pageg = 0;
//
//   PageController controller = PageController();
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//      controller = PageController(viewportFraction: 1/1.2,initialPage: pageg,keepPage: true);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("LevelPage"),
//       ),
//       body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
//         child: PageView.builder(
//           onPageChanged: (value) {
//             setState(() {
//               pageg = value;
//             });
//           },
//           controller: controller,
//           // physics: PageScrollPhysics(),
//           pageSnapping: true,
//           itemCount: 4,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Container(width: 150,
//                 margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.greenAccent,
//                   border: Border.all(width: 5, color: Colors.green),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       child: Text(
//                         "Match ",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                       margin: EdgeInsets.all(10),
//                     ),
//                     Divider(
//                       thickness: 10,
//                       color: Colors.green,
//                     ),
//                     Expanded(
//                         child: ListView.builder(
//                       itemCount: 10,
//                       itemBuilder: (context, index) {
//
//
//                         if(pageg==0)
//                           {
//                             return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
//                               child: InkWell(onTap:() {
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                                   return Game_Play();
//                                 },));
//                               },
//                                 child: Container(
//                                   margin: EdgeInsets.symmetric(vertical: 20),
//                                   child: Center(
//                                     child: Text(
//                                       "Level ${index+1} ",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ),
//                                   width: 150,
//                                   height: 50,
//                                   color: Colors.green,
//                                 ),
//                               ),
//                             );
//                           }
//                         else if(pageg==1)
//                           {
//                             {
//                               return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
//                                 child: InkWell(onTap:() {
//                                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                                     return Game_Play();
//                                   },));
//                                 },
//                                   child: Container(
//                                     margin: EdgeInsets.symmetric(vertical: 20),
//                                     child: Center(
//                                       child: Text(
//                                         "Level ${index+11} ",
//                                         style: TextStyle(color: Colors.white),
//                                       ),
//                                     ),
//                                     width: 150,
//                                     height: 50,
//                                     color: Colors.green,
//                                   ),
//                                 ),
//                               );
//                             }
//                           }
//                         else if(pageg==2)
//                         {
//                           {
//                             return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
//                               child: InkWell(onTap:() {
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                                   return Game_Play();
//                                 },));
//                               },
//                                 child: Container(
//                                   margin: EdgeInsets.symmetric(vertical: 20),
//                                   child: Center(
//                                     child: Text(
//                                       "Level ${index+21} ",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ),
//                                   width: 150,
//                                   height: 50,
//                                   color: Colors.green,
//                                 ),
//                               ),
//                             );
//                           }
//                         }
//                         else if(pageg==3)
//                         {
//                           {
//                             return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
//                               child: InkWell(onTap:() {
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                                   return Game_Play(index+30);
//                                 },));
//                               },
//                                 child: Container(
//                                   margin: EdgeInsets.symmetric(vertical: 20),
//                                   child: Center(
//                                     child: Text(
//                                       "Level ${index+31} ",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ),
//                                   width: 150,
//                                   height: 50,
//                                   color: Colors.green,
//                                 ),
//                               ),
//                             );
//                           }
//                         }
//                         else {
//
//                         }
//
//                       },
//                     ))
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
