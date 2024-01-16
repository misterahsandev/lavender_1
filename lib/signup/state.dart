import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

class SignupState {
  TextStyle? Titletext;
  TextStyle? Logintext;
  TextStyle? Yellowtext;
  TextStyle? Fieldtext;

  SignupState() {
    ///Initialize variables
    Titletext= TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18.sp);
    Logintext= TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17.sp);
    Yellowtext= TextStyle(color: Colors.yellow,fontWeight: FontWeight.w300,fontSize: 15.sp);
    Fieldtext= TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 15.sp);

  }
}
