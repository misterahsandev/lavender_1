import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../colors.dart';

import 'logic.dart';

class Tracking_detailsPage extends StatelessWidget {
  final logic = Get.put(Tracking_detailsLogic());
  final state = Get.find<Tracking_detailsLogic>().state;

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
          'Tracking Details',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                children: [
                  Text(
                    'Track another order?',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Click here',
                    style: TextStyle(color: customthemecolor),
                  )
                ],
              ),
            ),
            /// round containers ///
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 15),
              child: Row(
                children: [
                  /// greeen container ///
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.lightGreen,
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: Colors.green)
                          ]),
                      child: Center(
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                      )),
                  Container(
                    height: 7,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.yellowAccent,
                        boxShadow: [
                          BoxShadow(blurRadius: 0, color: Colors.grey)
                        ]),
                    child: Column(
                      children: [],
                    ),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.yellow,
                          ),
                      ),
                  Container(
                    height: 7,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.yellowAccent,
                        boxShadow: [
                          BoxShadow(blurRadius: 0, color: Colors.grey)
                        ]),
                    child: Column(
                      children: [],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 30),
                    child: Column(
                          children: [
                            Text('Ordered'),
                            Text('16-Jan-2023')
                          ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text('Shopping'),
                  ),
                  Text('Delivered',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Text(
                'Order# 3uuaofdl4eio88w',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Text('Your Order was placed on 16-Jan-2023 01:06 am and current Status is Pending.',
                style: TextStyle(color: Colors.grey),),
            ),Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Text('Order Summary:',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Container(
                width: 330,
                height: 207,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        color: Colors.grey,
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Daal Mong x1',style: TextStyle(color: Colors.grey),),
                            Padding(
                              padding: const EdgeInsets.only(left: 160),
                              child: Text('RS.450',style: TextStyle(color: Colors.grey)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Daal channa x1',style: TextStyle(color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Text('RS.450',style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Daal Mash x1',style: TextStyle(color: Colors.grey),),
                            Padding(
                              padding: const EdgeInsets.only(left: 160),
                              child: Text('RS.150',style: TextStyle(color: Colors.grey)),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sub total',style: TextStyle(color: Colors.black),),
                          Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: Text('RS.450',style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping',style: TextStyle(color: Colors.black),),
                            Padding(
                              padding: const EdgeInsets.only(left: 190),
                              child: Text('RS.350',style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' Total',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(left: 180),
                            child: Text('RS.800',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
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
