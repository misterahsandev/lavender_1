import 'package:flutter/material.dart';

 class custompurplebutton extends StatelessWidget {
   const custompurplebutton({Key? key, this.title, this.textStyle}) : super(key: key);
  final String ? title;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xff8585DE),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5,left: 6),
            child: Text('$title',
              style: textStyle,
            ),
          ),
          const Icon(Icons.arrow_right_alt, color: Colors.white,),
        ],
      ),
    );
  }
}
