import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customblackbox.dart';
import 'package:lavender_1/customwhitebutton.dart';
import 'package:resize/resize.dart';

import 'logic.dart';

class Lavender_intro2Page extends StatefulWidget {
  const Lavender_intro2Page({Key? key}) : super(key: key);

  @override
  State<Lavender_intro2Page> createState() => _Lavender_intro2PageState();
}

class _Lavender_intro2PageState extends State<Lavender_intro2Page> {
  final logic = Get.put(Lavender_intro2Logic());

  final state = Get
      .find<Lavender_intro2Logic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Lavender_intro2Logic>(builder: (lavender_intro2logic) =>
        Scaffold(
         backgroundColor: customthemecolor,
         body:SizedBox(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           child: SafeArea(
             child: Padding(
               padding: const EdgeInsets.only(top: 60),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(
                     width: MediaQuery.of(context).size.width * .4,
                     child: Image.asset('assets/lavender_logo.png'),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5),
                     child: Text('Lavender',
                     style: lavender_intro2logic.state.Titletext,),
                   ),
                   SizedBox(
                     width: 369.w,
                     height: 260,
                     child: Image.asset('assets/letter.png'),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                            Text('Please read our ',
                            style: TextStyle(color: Colors.white,),),
                           Text('Term & Privacy Policy',
                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                           ),
                   ],
                       ),
                   /// Read//
                   const Padding(
                     padding: EdgeInsets.only(top: 20,bottom: 30),
                     child:  customBlackButton(
                       title: 'Read',
                       textstyle: TextStyle(color: Colors.white),
                     ),
                   ),

                   ///Check Box///

                   Padding(
                     padding:  const EdgeInsets.only(left: 10),
                     child: Row(
                       children: [
                         Checkbox(
                             activeColor: Colors.white,
                             checkColor: Color(0xff8585DE),
                             value: lavender_intro2logic.rememberCheck,
                             onChanged: (newValue) {
                               //log('----ChangeValue--$newValue');
                               lavender_intro2logic.updateRememberCheck(newValue);
                         }
                         ),
                          const Text('I agree to ',
                         style: TextStyle(color: Colors.white,fontWeight:FontWeight.w300,),),
                          const Text('Lavender ',
                         style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                          const Text('terms and conditions .',
                           style: const TextStyle(color: Colors.white,fontWeight:FontWeight.w300,),)
                       ],
                     ),
                   ),
                   ///dots///
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 3),
                           child: Container(
                             height: 5.h,
                             width: 5.w,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10.r),
                               color: Colors.white54,
                             ),
                           ),
                         ),
                         Container(
                           height: 5.h,
                           width: 5.w,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.r),
                             color: Colors.white54,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 3, left: 3),
                           child: Container(
                             height: 7.h,
                             width: 7.w,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10.r),
                               color: Colors.white,
                             ),
                           ),
                         ),
                         Container(
                           height: 5.h,
                           width: 5.w,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.r),
                             color: Colors.white54,
                           ),
                         )
                       ],
                     ),
                   ),
                   ///back///
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       InkWell(
                         onTap: (){Get.back();},
                         child: const Icon(Icons.arrow_back,
                           color: Colors.white,
                         ),
                       ),
                       ///next button///
                       InkWell(
                         onTap: lavender_intro2logic.navigationMethod,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 190,top: 15),
                           child: customWhiteButton(
                             title: 'Next',
                             textStyle: TextStyle(color: customthemecolor),
                           ),
                         ),
                       ),
                     ],
                   )
                       ],
                     ),
             ),
                 )
             ),
         ),

    );
  }
}
