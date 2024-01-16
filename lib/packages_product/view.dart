import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/customappbar2.dart';
import 'package:resize/resize.dart';

import '../colors.dart';
import '../customcountingrow.dart';
import '../trollybutton.dart';
import 'logic.dart';

class Packages_productPage extends StatelessWidget {
  final logic = Get.put(Packages_productLogic());
  final state = Get.find<Packages_productLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customthemecolor,
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: customthemecolor,
        centerTitle: true,
        title: const Text(
          'Packages',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20,top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Category',style: TextStyle(color: Colors.grey,),),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,),
                      ),
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 2,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Text('Ascending price',style: TextStyle(color: Colors.grey,fontSize: 13)),
                              Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,),
                              Icon(Icons.keyboard_arrow_up_rounded,color: Colors.grey,),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                /// 1st category ///
                Row(
                  children: [
                    Container(
                    height: 200,
                    width: 147,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(3.r),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 9,
                              spreadRadius: 0,
                              offset: Offset(2, 2),
                              color: Colors.grey,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset('assets/saman.png'),
                        const Padding(
                          padding: EdgeInsets.only(
                              bottom: 5, right: 20),
                          child: Text(
                            'Grocery Packages',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight:
                                FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(
                                    left: 10,
                                    right: 40),
                                child: Text(
                                  'Rs 1500',
                                  style: TextStyle(
                                      color:
                                      customthemecolor),
                                ),
                              ),
                              const trollybutton(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 200,
                      width: 147,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(3.r),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 9,
                                spreadRadius: 0,
                                offset: Offset(2, 2),
                                color: Colors.grey,
                            ),
                          ]),
                      child: Column(
                        children: [
                          Image.asset('assets/electronic.png'),
                          const Padding(
                            padding: EdgeInsets.only(
                                bottom: 5, right: 20),
                            child: Text(
                              'Electric Packages',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:
                                  FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(
                                      left: 10,
                                      right: 40),
                                  child: Text(
                                    'Rs 1500',
                                    style: TextStyle(
                                        color:
                                        customthemecolor),
                                  ),
                                ),
                                const trollybutton(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ]
                ),
                /// 2st category ///
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                      height: 200,
                      width: 147,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(3.r),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 9,
                              spreadRadius: 0,
                              offset: Offset(2, 2),
                              color: Colors.grey,
                            ),
                          ]),
                      child: Column(
                        children: [
                          Image.asset('assets/king.png'),
                          const Padding(
                            padding: EdgeInsets.only(
                                bottom: 5, right: 20),
                            child: Text(
                              'King Packages',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:
                                  FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(
                                      left: 10,
                                      right: 40),
                                  child: Text(
                                    'Rs 1500',
                                    style: TextStyle(
                                        color:
                                        customthemecolor),
                                  ),
                                ),
                                const trollybutton(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 200,
                        width: 147,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(3.r),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 9,
                                spreadRadius: 0,
                                offset: Offset(2, 2),
                                color: Colors.grey,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Image.asset('assets/ice.png'),
                            const Padding(
                              padding: EdgeInsets.only(
                                  bottom: 5, right: 20),
                              child: Text(
                                'Ice Packages',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight:
                                    FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(
                                        left: 10,
                                        right: 40),
                                    child: Text(
                                      'Rs 1500',
                                      style: TextStyle(
                                          color:
                                          customthemecolor),
                                    ),
                                  ),
                                  const trollybutton(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ],
                  ),
                ),
                /// 3st category ///
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 147,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(3.r),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 9,
                              spreadRadius: 0,
                              offset: Offset(2, 2),
                              color: Colors.grey,
                            ),
                          ]),
                      child: Column(
                        children: [
                          Image.asset('assets/dal pack.png'),
                          const Padding(
                            padding: EdgeInsets.only(
                                bottom: 5, right: 20),
                            child: Text(
                              'Food Packages',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:
                                  FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(
                                      left: 10,
                                      right: 40),
                                  child: Text(
                                    'Rs 1500',
                                    style: TextStyle(
                                        color:
                                        customthemecolor),
                                  ),
                                ),
                                const trollybutton(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 200,
                        width: 147,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(3.r),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 9,
                                spreadRadius: 0,
                                offset: Offset(2, 2),
                                color: Colors.grey,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Image.asset('assets/electronic.png'),
                            const Padding(
                              padding: EdgeInsets.only(
                                  bottom: 5, right: 20),
                              child: Text(
                                'Electric Packages',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight:
                                    FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(
                                        left: 10,
                                        right: 40),
                                    child: Text(
                                      'Rs 1500',
                                      style: TextStyle(
                                          color:
                                          customthemecolor),
                                    ),
                                  ),
                                  const trollybutton(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                /// 4st category ///
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 147,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(3.r),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 9,
                                spreadRadius: 0,
                                offset: Offset(2, 2),
                                color: Colors.grey,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Image.asset('assets/ice.png'),
                            const Padding(
                              padding: EdgeInsets.only(
                                  bottom: 5, right: 20),
                              child: Text(
                                'Grocery Packages',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight:
                                    FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(
                                        left: 10,
                                        right: 40),
                                    child: Text(
                                      'Rs 1500',
                                      style: TextStyle(
                                          color:
                                          customthemecolor),
                                    ),
                                  ),
                                  const trollybutton(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 200,
                          width: 147,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(3.r),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 9,
                                  spreadRadius: 0,
                                  offset: Offset(2, 2),
                                  color: Colors.grey,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset('assets/saman.png'),
                              const Padding(
                                padding: EdgeInsets.only(
                                    bottom: 5, right: 20),
                                child: Text(
                                  'Grocery Packages',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(
                                          left: 10,
                                          right: 40),
                                      child: Text(
                                        'Rs 1500',
                                        style: TextStyle(
                                            color:
                                            customthemecolor),
                                      ),
                                    ),
                                    const trollybutton(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// 5th category ///
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 0),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 147,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(3.r),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 9,
                                spreadRadius: 0,
                                offset: Offset(2, 2),
                                color: Colors.grey,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Image.asset('assets/king.png'),
                            const Padding(
                              padding: EdgeInsets.only(
                                  bottom: 5, right: 20),
                              child: Text(
                                'King Packages',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight:
                                    FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(
                                        left: 10,
                                        right: 40),
                                    child: Text(
                                      'Rs 1500',
                                      style: TextStyle(
                                          color:
                                          customthemecolor),
                                    ),
                                  ),
                                  const trollybutton(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 200,
                          width: 147,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(3.r),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 9,
                                  spreadRadius: 0,
                                  offset: Offset(2, 2),
                                  color: Colors.grey,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset('assets/dal pack.png'),
                              const Padding(
                                padding: EdgeInsets.only(
                                    bottom: 5, right: 20),
                                child: Text(
                                  'Food Packages',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(
                                          left: 10,
                                          right: 40),
                                      child: Text(
                                        'Rs 1500',
                                        style: TextStyle(
                                            color:
                                            customthemecolor),
                                      ),
                                    ),
                                    const trollybutton(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,right: 10),
                  child: customcountingrow(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
