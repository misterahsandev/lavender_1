import 'package:flutter/material.dart';
import 'package:lavender_1/colors.dart';

class customcountingrow extends StatelessWidget {
  const customcountingrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black45,
              ),
              child: Icon(Icons.arrow_back_ios,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 0,
                      color: Colors.grey,
                      offset: Offset(0,3)
                    ),
                  ]
                ),
                child: Center(child: Text('1',
                  style: TextStyle(fontSize: 16,color: Colors.grey),
                )
                ),
              ),
            ),

            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: customthemecolor,
              ),
              child: Center(child: Text('2',
                style: TextStyle(fontSize: 16,color: Colors.white),
              )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 0,
                          color: Colors.grey,
                          offset: Offset(0,3)
                      ),
                    ]
                ),
                child: Center(child: Text('3',
                  style: TextStyle(fontSize: 16,color: Colors.grey),
                )
                ),
              ),
            ),
            Container(
              height: 8,
              width: 8,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey
              ) ,
            ),Padding(
              padding: const EdgeInsets.only(left: 3,right: 3),
              child: Container(
                height: 8,
                width: 8,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
                ) ,
              ),
            ),Container(
              height: 8,
              width: 8,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey
              ) ,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 0,
                          color: Colors.grey,
                          offset: Offset(0,3)
                      ),
                    ]
                ),
                child: Center(child: Text('20',
                  style: TextStyle(fontSize: 16,color: Colors.grey),
                )
                ),
              ),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black,
              ),
              child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
