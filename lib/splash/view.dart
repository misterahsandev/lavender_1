import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customwhitebutton.dart';
import 'package:resize/resize.dart';

import 'logic.dart';

class SplashPage extends StatelessWidget {
  final logic = Get.put(SplashLogic());
  final state = Get
      .find<SplashLogic>()
      .state;

  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashLogic>(builder: (splashlogic) =>
        Scaffold(
        backgroundColor: customthemecolor,
        body: Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/lavender_logo.png'),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 8),
                child: Text('Welcome To',
                  style: TextStyle(color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w300),),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text('Lavender Shopping Service',
                    style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Container(
                        height: 7.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
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

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: InkWell(
                  onTap: splashlogic.navigationMethod,
                  child: customWhiteButton(
                    title: 'Get Started',
                    textStyle: TextStyle(color: customthemecolor),
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
