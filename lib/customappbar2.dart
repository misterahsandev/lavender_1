import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customappbar2 extends StatelessWidget {
  const customappbar2({Key? key, this.title, this.textStyle}) : super(key: key);
  final String? title;
  final TextStyle? textStyle;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text('$title',
        style: textStyle,),
      ),
    );
  }
}
