import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../customorderdetails.dart';
import 'logic.dart';

class All_orderPage extends StatelessWidget {
  final logic = Get.put(All_orderLogic());
  final state = Get
      .find<All_orderLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<All_orderLogic>(builder: (all_orderlogic) {
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
            'All Order',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 60),
                  child: InkWell(
                    onTap:all_orderlogic.navigationMethod,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.touch_app),
                          Text('Tap here to view order details')
                        ],
                      ),
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
        ),
      );
    });
  }
}
