import 'package:flutter/material.dart';
import 'package:lavender_1/colors.dart';

class customlargepurple extends StatelessWidget {
  const customlargepurple({Key? key, this.title, this.textStyle}) : super(key: key);
  final String? title;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 320,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(6),
          color: customthemecolor,
          boxShadow: const [
            BoxShadow(
              blurRadius: 1,
              spreadRadius: 0,
              color: Colors.grey,
            ),
          ]),
      child: Center(
        child: Text('$title',
        style: textStyle,),
      )
    );
  }
}
