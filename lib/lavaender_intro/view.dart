import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customwhitebutton.dart';
import 'package:resize/resize.dart';

import 'logic.dart';

class Lavaender_introPage extends StatefulWidget {
  @override
  State<Lavaender_introPage> createState() => _Lavaender_introPageState();
}

class _Lavaender_introPageState extends State<Lavaender_introPage> {
  final logic = Get.put(Lavaender_introLogic());

  final state = Get.find<Lavaender_introLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Lavaender_introLogic>(
        builder: (lavaender_intrologic) =>
            Scaffold(
              backgroundColor: customthemecolor,
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child:SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                          Container(
                            width:MediaQuery.of(context).size.width * .4,
                              child: Image.asset('assets/lavender_logo.png')
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Lavender',
                        style: lavaender_intrologic.state.Logotext,
                        ),
                      ),
                      SizedBox(
                        height: 300,
                          width: 329,
                          child: Image.asset('assets/lavenderbike.png')),
                      SizedBox(
                        height: 57,
                        width: 265,
                        child: Text('We are your personal Shoppers. We do the shopping for you while just sit back at home and relax.',
                          style: lavaender_intrologic.state.Introtext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 3),
                              child: Container(
                                height: 5.h,
                                width: 5.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                            Container(
                              height: 7.h,
                              width: 7.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 3, left: 3),
                              child: Container(
                                height: 5.h,
                                width: 5.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                            Container(
                              height: 5.h,
                              width: 5.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white54,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){Get.back();},
                            child: const Icon(Icons.arrow_back,
                            color: Colors.white,
                            ),
                          ),

                          InkWell(
                            onTap: lavaender_intrologic.navigationMethod,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 190,top: 15),
                              child: customWhiteButton(
                                title: 'Next',
                                textStyle: TextStyle(color: customthemecolor),
                              ),
                            ),
                          ),
                        ],
                      )
                        ],
                      ),
                ),
                    ),
              ),
              ),
    );
  }
}
