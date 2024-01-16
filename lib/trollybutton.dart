
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

class trollybutton extends StatefulWidget {
  const trollybutton({Key? key}) : super(key: key);

  @override
  State<trollybutton> createState() => _trollybuttonState();
}

class _trollybuttonState extends State<trollybutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
        color: Colors.black,
      ),
      child: Image.asset('assets/Vector (1).png'),
    );
  }
}
