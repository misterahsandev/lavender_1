import 'package:flutter/material.dart';

class containercode extends StatelessWidget {
  const containercode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                color: Colors.grey
            )
          ]
      ),
      child: Column(
        children: [

        ],
      ),
    );

  }
}
