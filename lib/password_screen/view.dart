import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/account_screen/logic.dart';
import 'package:lavender_1/widepurplebutton.dart';

import '../colors.dart';
import 'logic.dart';

class Password_screenPage extends StatelessWidget {
  final logic = Get.put(Password_screenLogic());
  final state = Get
      .find<Password_screenLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Password_screenLogic>(builder: (password_screenlogic) =>Scaffold(
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
            'Password',
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

              /// Old Password///
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 20),
                    child: Text(
                      'Old password',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 3),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Old Password',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
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

              ///New Password///
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 20),
                    child: Text(
                      'New Password',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 3),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'New Password',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
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
                        'Update Password',
                        style: TextStyle(color: Colors.grey, fontSize: 15)
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 3),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Update Password',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
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
              ListTile(
                trailing: InkWell(
                  onTap: password_screenlogic.navigationMethod,
                  child: customwidepurple(
                    title: 'Update Password',
                    textStyle: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
