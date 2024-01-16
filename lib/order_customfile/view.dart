import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../customorderdetails.dart';
import 'logic.dart';

class Order_customfilePage extends StatelessWidget {
  final logic = Get.put(Order_customfileLogic());
  final state = Get.find<Order_customfileLogic>().state;

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
          'Custom Order',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: customorderdetails(),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
