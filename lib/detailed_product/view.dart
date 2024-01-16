import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/widepurplebutton.dart';
import 'package:resize/resize.dart';

import '../colors.dart';
import '../custompurplebutton.dart';
import '../trollybutton.dart';
import 'logic.dart';

class Detailed_productPage extends StatelessWidget {
  final logic = Get.put(Detailed_productLogic());
  final state = Get
      .find<Detailed_productLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Detailed_productLogic>(builder: (detailed_productlogic)=>
       Scaffold(
         backgroundColor: customthemecolor,
         appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
           elevation: 0,
           backgroundColor: customthemecolor,
           centerTitle: true,
           title: const Text(
             'Latest Product',
             style: TextStyle(
               color: Colors.white,
             ),
           ),
         ),
         body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Container(
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                 color: Colors.white
             ),
             child: Padding(
               padding: const EdgeInsets.only(left: 10,top: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Robin Neel Bottle',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                   Image.asset('assets/bluebottle.png'),
                   Row(
                     children: [
                       Text('Brand/Company:',style: detailed_productlogic.state.headingtext,),
                       Text(' Robin Blue',style: TextStyle(color: customthemecolor),),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 10,bottom: 5),
                     child: Text('Varient',style: detailed_productlogic.state.headingtext,),
                   ),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 10),
                         child: Container(
                           height: 30,
                           width: 60,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.white,
                             boxShadow: [
                               BoxShadow(
                                 blurRadius: 2,
                                 color: Colors.blueAccent
                               )
                             ]
                           ),
                           child: Center(child: Text('Small',style: TextStyle(color: Colors.grey),)),
                         ),
                       ),
                       Container(
                         height: 30,
                         width: 60,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.white,
                           boxShadow: [
                             BoxShadow(
                               blurRadius: 2,
                               color: Colors.grey
                             )
                           ]
                         ),
                         child: Center(child: Text('Large',style: TextStyle(color: Colors.grey),)),
                       ),
                   ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 10,bottom: 5),
                     child: Row(
                       children: [
                         Text("Market Rate:  ",style: detailed_productlogic.state.headingtext,),
                         Text("Rs.220",style:TextStyle(color: Colors.grey) ,),
                       ],
                     ),
                   ),
                   Row(
                     children: [
                       Text("Distribution Price:  ",style: detailed_productlogic.state.headingtext,),
                       Text("Rs.250",style:TextStyle(color: Colors.grey) ,),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5,bottom: 5),
                     child: Text("Quantity:",style: detailed_productlogic.state.headingtext,),
                   ),
                   Row(
                     children: [
                       Container(
                         height: 35,
                         width: 80,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(6),
                           color: Colors.white,
                           boxShadow: [
                             BoxShadow(
                               blurRadius: 2,
                               color: Colors.grey,
                             ),
                           ]
                         ),
                         child: Row(
                           children:[
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Icon(Icons.add,color: Colors.grey,),
                            ),
                            Text('  1  '),
                           Icon(Icons.remove,color: Colors.grey,) ,
                     ]
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: customwidepurple(
                           title: 'Add To Cart',
                           textStyle: TextStyle(color: Colors.white),
                         ),
                       ),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5,bottom: 5),
                     child: Text('Description',style: detailed_productlogic.state.headingtext,),
                   ),
                   Text('This is a Robin blue bottle of neel.'
                       ' It is used to make cloths clean.And make then to more atttractive'
                       '.It only cost 120 rupees. If you buy it form our store them'
                       'we will give you special discount',style: TextStyle(color: Colors.grey),),
                   Padding(
                     padding: const EdgeInsets.only(
                         top: 20, left: 3),
                     child: Row(
                       children:  [
                         Padding(
                           padding: EdgeInsets.only(right: 5),
                           child: Text('Related products',
                               style: TextStyle(
                                 fontWeight: FontWeight.w800,
                                 fontSize: 20,
                               )),
                         ),

                         /// Divider ///
                         Expanded(
                           child: Divider(color: Colors.grey),
                         )
                       ],
                     ),
                   ),
                   /// packages container 1 ///
                   Padding(
                     padding:
                     const EdgeInsets.only(left: 10, top: 10,bottom: 20),
                     child: SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: [
                           Container(
                             height: 200,
                             width: 147,
                             decoration: BoxDecoration(
                                 borderRadius:
                                 BorderRadius.circular(3.r),
                                 color: Colors.white,
                                 boxShadow: const [
                                   BoxShadow(
                                       blurRadius: 5,
                                       spreadRadius: 0,
                                       offset: Offset(2, 0),
                                       color: Colors.grey
                                   ),
                                 ]),
                             child: Column(
                               children: [
                                 Image.asset('assets/saman.png'),
                                 const Padding(
                                   padding: EdgeInsets.only(
                                       bottom: 5, right: 20),
                                   child: Text(
                                     'Grocery Packages',
                                     style: TextStyle(
                                         fontSize: 15,
                                         fontWeight:
                                         FontWeight.w500),
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(
                                       top: 0),
                                   child: Row(
                                     children: [
                                       Padding(
                                         padding:
                                         const EdgeInsets.only(
                                             left: 10,
                                             right: 40),
                                         child: Text(
                                           'Rs 1500',
                                           style: TextStyle(
                                               color:
                                               customthemecolor),
                                         ),
                                       ),
                                       const trollybutton(),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(
                                 left: 15, top: 0),
                             child: Container(
                               height: 200,
                               width: 147,
                               decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadius.circular(3.r),
                                   color: Colors.white,
                                   boxShadow: const [
                                     BoxShadow(
                                         blurRadius: 3,
                                         spreadRadius: 0,
                                         offset: Offset(2, 0),
                                         color: Colors.grey),
                                   ]),
                               child: Column(
                                 children: [
                                   Image.asset(
                                       'assets/electronic.png'),
                                   const Padding(
                                     padding: EdgeInsets.only(
                                         bottom: 5, right: 20),
                                     child: Text(
                                       'Electronic Product',
                                       style: TextStyle(
                                           fontSize: 15,
                                           fontWeight:
                                           FontWeight.w500),
                                     ),
                                   ),
                                   Padding(
                                     padding:
                                     const EdgeInsets.only(
                                         top: 0),
                                     child: Row(
                                       children: [
                                         Padding(
                                           padding:
                                           const EdgeInsets
                                               .only(
                                               left: 10,
                                               right: 40),
                                           child: Text(
                                             'Rs 1500',
                                             style: TextStyle(
                                                 color:
                                                 customthemecolor),
                                           ),
                                         ),
                                         const trollybutton(),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(
                                 left: 20, bottom: 5),
                             child: Container(
                               height: 200,
                               width: 147,
                               decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadius.circular(3.r),
                                   color: Colors.white,
                                   boxShadow: const [
                                     BoxShadow(
                                         blurRadius: 3,
                                         spreadRadius: 0,
                                         offset: Offset(2, 0),
                                         color: Colors.grey),
                                   ]),
                               child: Column(
                                 children: [
                                   Image.asset('assets/king.png'),
                                   const Padding(
                                     padding: EdgeInsets.only(
                                         bottom: 5, right: 20),
                                     child: Text(
                                       'Grocery Packages',
                                       style: TextStyle(
                                           fontSize: 15,
                                           fontWeight:
                                           FontWeight.w500),
                                     ),
                                   ),
                                   Padding(
                                     padding:
                                     const EdgeInsets.only(
                                         top: 0),
                                     child: Row(
                                       children: [
                                         Padding(
                                           padding:
                                           const EdgeInsets
                                               .only(
                                               left: 10,
                                               right: 40),
                                           child: Text(
                                             'Rs 1500',
                                             style: TextStyle(
                                                 color:
                                                 customthemecolor),
                                           ),
                                         ),
                                         const trollybutton(),
                                       ],
                                     ),
                                   )
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
             ),
           )
         ),
       ),
    );
  }
}
