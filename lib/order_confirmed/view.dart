import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';

import 'logic.dart';

class Order_confirmedPage extends StatelessWidget {
  final logic = Get.put(Order_confirmedLogic());
  final state = Get
      .find<Order_confirmedLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Order_confirmedLogic>(builder: (order_confirmedlogic) =>
       Scaffold(
         backgroundColor: customthemecolor,
         body: Padding(
           padding: const EdgeInsets.only(left: 60),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             // crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SvgPicture.asset('assets/orderconfrm.svg'),
               Image.asset('assets/Order Placed.png'),
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: InkWell(
                   onTap: order_confirmedlogic.navigationMethod,
                   child: Container(
                     height: 50,
                     width: 140,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(7),
                       color: Colors.black,
                     ),
                     child: Center(child: Text('Continue Shopping',
                       style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400,),)),
                   ),
                 ),
               )
             ],
           ),
         ),

       ),
    );
  }
}
