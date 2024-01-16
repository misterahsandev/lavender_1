import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../widepurplebutton.dart';
import 'logic.dart';

class Track_orderPage extends StatelessWidget {
  final logic = Get.put(Track_orderLogic());
  final state = Get
      .find<Track_orderLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Track_orderLogic>(builder: (track_orderlogic) =>Scaffold(
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
            'Track Order',
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
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: Text(
                  'Enter your Order ID and Email to which you placed your order:',
                  style: TextStyle(fontSize: 19,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                height: 210,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13, top: 10),
                          child: Text(
                            'Order Id*',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 3),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '659hhfdj540',
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 13),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(06),
                                borderSide:
                                const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:
                                const BorderSide(color: Colors.grey),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                  const BorderSide(color: Colors.red)),
                            ),
                          ),
                        )
                      ],
                    ),

                    ///Update Password///
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13, top: 20),
                          child: Text(
                              'Email Address',
                              style: TextStyle(color: Colors.grey, fontSize: 15)
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 3),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '@gmai.com',
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 13),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:
                                const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:
                                const BorderSide(color: Colors.grey),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                  const BorderSide(color: Colors.red)),
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              ListTile(
                trailing: InkWell(
                  onTap: track_orderlogic.navigationMethod,
                  child: customwidepurple(
                    title: 'Update Password',
                    textStyle: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
