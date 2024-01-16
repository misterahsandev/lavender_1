import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/customlargepurple.dart';
import 'package:lavender_1/customlistacc.dart';
import 'package:lavender_1/customorderdetails.dart';
import 'package:lavender_1/custompurplebutton.dart';
import 'package:lavender_1/widepurplebutton.dart';

import '../colors.dart';
import '../customblackbox.dart';
import 'logic.dart';

class Profile_screenPage extends StatelessWidget {
  final logic = Get.put(Profile_screenLogic());
  final state = Get
      .find<Profile_screenLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Profile_screenLogic>(builder: (profile_screenlogic)
      =>Scaffold(
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
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15,left: 7),
              child: Column(
                children: [
                  customlistacc(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 15,right: 10),
                    child: Container(
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0,top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height:80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60)
                                      ),
                                      child: Image.asset('assets/nobody 1.png')),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      children: [
                                        Text('M.Sarmad',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text('msamrd@gmail.com',style: TextStyle(color: Colors.grey),),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Text('Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                            Text('No Address added....',style: TextStyle(color: Colors.grey),),
                            Padding(
                              padding: const EdgeInsets.only(top: 13,bottom: 5),
                              child: Text('Phone number',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,)),
                            ),
                            Text('0306-xxxxxx.',style:TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height:500,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 20),
                              child: Text(
                                'User name',
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 5, right: 3, top: 3),
                              child: TextFormField(
                                decoration: InputDecoration(
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

                        ///Email///
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 20),
                              child: Text(
                                'Email',
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 5, right: 3, top: 3),
                              child: TextFormField(
                                decoration: InputDecoration(
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

                        ///Password///
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 20),
                              child: Text(
                                'Address*',
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 5, right: 3, top: 3),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Street-1..',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: false,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(06),
                                    borderSide:
                                    const BorderSide(color: Colors.grey),
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

                        ///Phone///
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 20),
                              child: Text(
                                'Phone',
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 5, right: 3, top: 3),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: '0306-xxxx',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide:
                                    const BorderSide(color: Colors.grey),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 215),
                          child: customwidepurple(
                            title: 'Update',
                            textStyle: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    ),
    );
  }
}
