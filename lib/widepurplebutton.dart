import 'package:flutter/material.dart';
import 'package:lavender_1/colors.dart';
import 'package:resize/resize.dart';

class customwidepurple extends StatelessWidget {
  const customwidepurple({Key? key, this.title, this.textStyle}) : super(key: key);
final String? title;
final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 120.w,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(5.r),
          color: customthemecolor,
      ),
      child: Center(
        child: Text('$title',
            style: textStyle),
      ),
    );;
  }
}
