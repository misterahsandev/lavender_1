import 'package:flutter/material.dart';

class customtrasnparentbox extends StatefulWidget {
  const customtrasnparentbox({Key? key,  }) : super(key: key);


  @override
  State<customtrasnparentbox> createState() => _customtrasnparentboxState();
}

class _customtrasnparentboxState extends State<customtrasnparentbox> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 0,
            color: Colors.grey,
          ),
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 5),
        child: Text('Write here....',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w300),),
      ),
    );
  }
}