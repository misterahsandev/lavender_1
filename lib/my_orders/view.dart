import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/customorderdetails.dart';
import '../colors.dart';

import 'logic.dart';

class My_ordersPage extends StatelessWidget {
  final logic = Get.put(My_ordersLogic());
  final state = Get
      .find<My_ordersLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<My_ordersLogic>(builder: (my_orderlogic) {
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
            'My Orders',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: InkWell(
                  onTap: my_orderlogic.navigationMethod,
                  child: Container(
                    height: 60,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 1, color: Colors.grey)
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset('assets/notebook.png'),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('All orders', style: TextStyle(fontSize: 14)),
                              Text(
                                'Total: 8',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                          trailing: Icon(Icons.remove_red_eye),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              /// custom orders ///
              InkWell(
                onTap: my_orderlogic.navigationMethodcustomorder,
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset('assets/onlyorderpic.png'),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Custom orders',
                                style: TextStyle(fontSize: 14)),
                            Text(
                              'Total: 8',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.remove_red_eye),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: customorderdetails(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
