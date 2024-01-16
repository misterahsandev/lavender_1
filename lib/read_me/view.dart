import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../headdownpage.dart';
import 'logic.dart';

class Read_mePage extends StatelessWidget {
  final logic = Get.put(Read_meLogic());
  final state = Get.find<Read_meLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey,
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
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/head2down.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 5,top: 10,bottom: 5),
                  child: Text('Pains Of Busy Routine.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Icon(Icons.watch_later_outlined,size: 12,color: Colors.grey,),
                      Text('11 Jan 2023.',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 5,bottom: 10),
                  child: Text("The life is very difficult. "
                      "Especially when you are a student and also practical life is more difficult "
                      "but the student life is full of fun and stress les life till matric.You have many your firends to enjoy in school.",
                    style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text('Trending News..',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 20,left: 5),
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
                        customheaddown(),
                        Divider(),
                        customheaddown(),
                        Divider(),
                        customheaddown(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
