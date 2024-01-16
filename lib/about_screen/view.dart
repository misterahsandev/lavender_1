import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';

import 'logic.dart';

class About_screenPage extends StatelessWidget {
  final logic = Get.put(About_screenLogic());
  final state = Get
      .find<About_screenLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<About_screenLogic>(builder: (about_screenlogic) =>
      Scaffold(
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
            'Account',
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
          child: Padding(
            padding: const EdgeInsets.only(top: 25,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We live in a 24/7 busy world now. Dealing with everything every day is not quite possible."
                      " Lavender is here to take away some of your tensions away. Lavender provides shopping services for you. "
                      "It's not easy for everyone to go out to shop. Lavender takes your order, "
                      "go to the market and do the shopping for you.",
                  style: about_screenlogic.state.headingtext,),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 15),
                  child: Text('Here are some key points/advantages of choosing lavender.',  style: about_screenlogic.state.headingtext,),
                ),
                Text('Flexibility:', style: about_screenlogic.state.boldtext,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Text('Lavender lets you choose your daily base products and shops everything for you.', style: about_screenlogic.state.headingtext,),
                ),
                Text('Low Rates:',style: about_screenlogic.state.boldtext,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Text('Lavender give you the lowest rate in the market which no other vendor does.', style: about_screenlogic.state.headingtext,),
                ),
                Text('Consistent Contact:', style: about_screenlogic.state.boldtext,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Text("Lavender keeps their customer in contact constantly. Before shopping, during shopping and after shopping. It's just like you are there shopping yourself but in reality you are doing everything just sitting home.",
                      style: about_screenlogic.state.headingtext),
                ),
                Text('We do the dealing for you:', style: about_screenlogic.state.boldtext,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Text('Lavender let you stay home and take over the dealing with the seller on ourselves.',
                      style: about_screenlogic.state.headingtext),
                ),
            Container(
              height: 60,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.blueGrey[50],
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                      color: Colors.grey,
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 3,left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Note:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                    Text("Vegetables, Fruits, Refrigerator Items,Meat of any kind is not available.",style: about_screenlogic.state.headingtext,)
                  ],
                ),
              ),
            ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
