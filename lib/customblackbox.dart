import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

class customBlackButton extends StatelessWidget {
  const customBlackButton({Key? key, this.title, this.textstyle}) : super(key: key);
final String? title;
final TextStyle? textstyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.h,
      width: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: Colors.black,
      ),
      child: Center(
        child: Text('$title',
        style: textstyle),
      ),
    );
  }
}
