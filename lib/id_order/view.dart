import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';
import 'logic.dart';

class Id_orderPage extends StatelessWidget {
  final logic = Get.put(Id_orderLogic());
  final state = Get.find<Id_orderLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customthemecolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customthemecolor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Text(
          'Orders Detail',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ListTile(
              leading: Text(
                'Order# 690sjdk450',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic),
              ),
              trailing: Container(
                height: 30,
                width: 73,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.lightGreen,
                    boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey)]),
                child: Center(
                    child: Text(
                      'Delivered',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            Container(
              height: 170,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey)]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('#',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Text('Product',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                        ),
                        Text('Category/Company',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('1'),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('Dalda Cooking Oil × 1',style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('Grocery'),
                        ),
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('2'),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Text('Sugar × 5',style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('Grocery'),
                        ),
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('3'),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text('Safety Matches × 1',style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('Grocery'),
                        ),
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('4'),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('Detol Cool Menthol × 1',style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('Grocery'),
                        ),
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('5'),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('LUX Soap Soft Touch × 1',style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('Grocery'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 330,
                height: 107,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sub Total',style: TextStyle(fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: Text('RS.450',style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping',style: TextStyle(fontWeight: FontWeight.w500),),
                            Padding(
                              padding: const EdgeInsets.only(left: 190),
                              child: Text('RS.350',style: TextStyle(color: Colors.grey)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Total',style: TextStyle(fontWeight: FontWeight.w700),),
                          Padding(
                            padding: const EdgeInsets.only(left: 215),
                            child: Text('RS.800',style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
