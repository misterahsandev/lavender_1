import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

class customWhiteButton extends StatelessWidget {
  const customWhiteButton({Key? key, this.title, this.textStyle}) : super(key: key);
  final String? title;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.h,
      width: 127.w,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(5.r),
        color: Colors.white
      ),
      child: Center(
          child: Text('$title',
          style: textStyle),
      ),
      );
  }
}
