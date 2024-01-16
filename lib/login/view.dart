import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customblackbox.dart';
import 'package:lavender_1/customwhitebutton.dart';
import 'package:lavender_1/home/view.dart';
import 'package:resize/resize.dart';

import 'logic.dart';

class LoginPage extends StatelessWidget {
  final logic = Get.put(LoginLogic());
  final state = Get
      .find<LoginLogic>()
      .state;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginLogic>(builder: (loginlogic) =>
       Scaffold(
        backgroundColor:customthemecolor,
         body:SafeArea(
           child: SingleChildScrollView(

             child: Padding(
               padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
               child: SizedBox(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 30),
                   child: Form(
                     key: _formKey,
                     child: Column(
                         children: [
                           SizedBox(
                               width: MediaQuery.of(context).size.width *  .4,
                               child: Image.asset('assets/lavender_logo.png')),
                           Text('Lavender',
                             style: loginlogic.state.Titletext,),
                           ///Email///
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  EdgeInsets.only(left: 13,top: 60),
                                 child: Text('Email',
                                   style: loginlogic.state.Fieldtext,),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left: 5,right: 3,top: 3),
                                 child: TextFormField(
                                   /// validator ///
                                   validator: (value) {
                                     if (value == null || value.isEmpty) {
                                       return 'Please enter some text';
                                     }
                                     return null;
                                   },
                                   decoration: InputDecoration(
                                     filled: true,
                                     enabledBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(06),
                                       borderSide: BorderSide(color: Colors.white),
                                     ),
                                     focusedBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(6),
                                       borderSide: BorderSide(color: Colors.black),
                                     ),
                                     errorBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(6),
                                         borderSide: BorderSide(color: Colors.red)
                                     ),
                                   ),
                                 ),
                               )
                             ],
                           ),
                           ///Password///
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  EdgeInsets.only(left: 13,top: 30),
                                 child: Text('Password',
                                   style: loginlogic.state.Fieldtext,),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left: 5,right: 3,top: 3),
                                 child: TextFormField(
                                   validator: (value) {
                                     if (value == null || value.isEmpty) {
                                       return 'Please enter some text';
                                     }
                                     return null;
                                   },
                                   decoration: InputDecoration(
                                     filled: true,
                                     enabledBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(06),
                                       borderSide: BorderSide(color: Colors.white),
                                     ),
                                     focusedBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(6),
                                       borderSide: BorderSide(color: Colors.black),
                                     ),
                                     errorBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(6),
                                         borderSide: BorderSide(color: Colors.red)
                                     ),
                                   ),
                                 ),
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 30),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Checkbox(
                                     activeColor: Colors.white,
                                     checkColor: Color(0xff8585DE),
                                     value: loginlogic.rememberCheck,
                                     onChanged: (newValue){loginlogic.updateRememberCheck(newValue);}
                                 ),
                                 Text('Remember me',
                                   style: loginlogic.state.Fieldtext,),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 120,),
                                   child: InkWell(
                                     onTap: (){if (_formKey.currentState!.validate());},
                                     child: customBlackButton(
                                       title: 'Login',
                                       textstyle: TextStyle(color: Colors.white),
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 40),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Don't have an Account?",
                                   style: loginlogic.state.Yellowtext,),
                                 InkWell(
                                   onTap: loginlogic.navigationMethodsignup,
                                   child: Text("Signup",
                                     style: loginlogic.state.Logintext,),
                                 ),
                               ],
                             ),
                           ),
                           ///dots///
                           Padding(
                             padding: const EdgeInsets.only(top: 130),
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
                                     height: 5.h,
                                     width: 5.w,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10.r),
                                       color: Colors.white54,
                                     ),
                                   ),
                                 ),
                                 Container(
                                   height: 7.h,
                                   width: 7.w,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10.r),
                                     color: Colors.white,
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
                               ///Skip button///
                               InkWell(
                                 onTap: loginlogic.navigationMethod,
                                 child: Padding(
                                   padding: const EdgeInsets.only(left: 190,top: 15),
                                   child: customWhiteButton(
                                     title: 'Skip',
                                     textStyle: TextStyle(color: customthemecolor),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ]
                     ),
                   ),
                 ),
               ),
             ),
           ),
         ),
    )
    );
  }
}
