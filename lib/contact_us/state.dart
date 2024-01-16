import 'package:flutter/material.dart';

class Contact_usState {
  TextStyle? headingtext;
  TextStyle? boldtext;
  TextStyle? richtext;
  Contact_usState() {
    ///Initialize variables
    headingtext=TextStyle(color: Colors.grey);
    richtext=TextStyle(fontWeight: FontWeight.w500,fontSize: 16);
    boldtext=TextStyle(fontWeight: FontWeight.w700,fontSize: 20);
  }
}
