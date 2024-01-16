import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customcountingrow.dart';
import 'package:lavender_1/headdownpage.dart';

import '../customappbar2.dart';
import 'logic.dart';

class Latest_blogPage extends StatelessWidget {
  final logic = Get.put(Latest_blogLogic());
  final state = Get
      .find<Latest_blogLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Latest_blogLogic>(
        builder: (latest_bloglogic) =>
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: customthemecolor,
            leading: InkWell(
              onTap: (){Get.back();},
                child: Icon(Icons.arrow_back,color: Colors.white,),
            ),
            centerTitle: true,
            title: Text('Latest Blogs',style: TextStyle(color: Colors.white),),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.notifications,color: Colors.white,),
              )
            ],
          ),
          backgroundColor: customthemecolor,
          body: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: 342,
                      height: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 0,
                            color: Colors.grey
                          ),
                        ]
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: latest_bloglogic.navigationMethod,
                              child: customheaddown()),
                          Divider(),
                          InkWell(
                            onTap: latest_bloglogic.navigationMethod,
                              child: customheaddown()),
                          Divider(),
                          InkWell(
                            onTap: latest_bloglogic.navigationMethod,
                              child: customheaddown()),

                        ],
                      ),
                    ),
                  ),
                  customcountingrow(),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
