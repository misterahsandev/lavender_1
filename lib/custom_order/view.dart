import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customlargepurple.dart';
import 'package:lavender_1/custompurplebutton.dart';
import 'package:lavender_1/customtransperatbox.dart';
import 'package:lavender_1/widepurplebutton.dart';

import 'logic.dart';

class Custom_orderPage extends StatelessWidget {
  final logic = Get.put(Custom_orderLogic());
  final state = Get.find<Custom_orderLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Custom_orderLogic>(
      builder: (custom_orderlogic) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          backgroundColor: customthemecolor,
          centerTitle: true,
          title: const Text(
            'Custom Order',
            style: TextStyle(
              color: Colors.white,
            ),
          ),

        ),
        backgroundColor: customthemecolor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 20,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Note:',
                        style:
                            TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: 0, right: 7, bottom: 10),
                        child: Text(
                          'Make & send your product list now. We will get back to you ASAP with the price of your order. If you are happy with the price. Confirm the order and you will have your products on your doorstep in no time.',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 15,color: Colors.grey),
                        ),
                      ),
                      const Text(
                        'Make your product list below:',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 5),
                        child: Container(
                          height: 465,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                const BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Colors.grey,
                                ),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                            ),
                            child: Column(
                              children: [
                                /// box 1 ///
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5, right: 30),
                                          child: Text(
                                            'Select Category*',
                                            style: custom_orderlogic
                                                .state.headingTitle,
                                          ),
                                        ),
                                        const customtrasnparentbox(),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              'Write product name*',
                                              style: custom_orderlogic
                                                  .state.headingTitle,
                                            ),
                                          ),
                                          const customtrasnparentbox(),
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                                /// box 2 ///
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, bottom: 15),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5, right: 50),
                                            child: Text(
                                              'Write a Unit*',
                                              style: custom_orderlogic
                                                  .state.headingTitle,
                                            ),
                                          ),
                                          const customtrasnparentbox(),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Text(
                                                'Write a quantity*',
                                                style: custom_orderlogic
                                                    .state.headingTitle,
                                              ),
                                            ),
                                            const customtrasnparentbox(),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                /// divider and pruple button ///
                                Row(
                                  children: [
                                    const Expanded(child: const Divider()),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 17, left: 3, bottom: 15),
                                      child: customwidepurple(
                                        title: 'Add product',
                                        textStyle: const TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),

                                /// box 3 ///
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5, right: 30),
                                          child: Text(
                                            'Select Category*',
                                            style: custom_orderlogic
                                                .state.headingTitle,
                                          ),
                                        ),
                                        const customtrasnparentbox(),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              'Write product name*',
                                              style: custom_orderlogic
                                                  .state.headingTitle,
                                            ),
                                          ),
                                          const customtrasnparentbox(),
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                                /// box 4 ///
                                Padding(
                                  padding: const EdgeInsets.only(top: 15,bottom: 15),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5, right: 50),
                                            child: Text(
                                              'Write a Unit*',
                                              style: custom_orderlogic
                                                  .state.headingTitle,
                                            ),
                                          ),
                                          const customtrasnparentbox(),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Text(
                                                'Write a Quantity*',
                                                style: custom_orderlogic
                                                    .state.headingTitle,
                                              ),
                                            ),
                                            const customtrasnparentbox(),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                /// divider and pruple button ///
                                Row(
                                  children: [
                                    const Expanded(child: const Divider()),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 5, left: 3, bottom: 10, top: 10),
                                      child: const customwidepurple(
                                        title: 'Add product',
                                        textStyle: const TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                    /// Red Button ///
                                    Padding(
                                      padding: const EdgeInsets.only(right: 18),
                                      child: Container(
                                        height: 33,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: Color(0xffDF6B6B),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 1,
                                                spreadRadius: 0,
                                                color: Colors.grey,
                                              ),
                                            ]),
                                        child: Center(
                                          child: Text(
                                            'Remove',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                /// Divider and large purple button ///
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8,right: 15),
                                  child: customlargepurple(
                                    title: 'Add Product(s) To Cart',
                                    textStyle: TextStyle(color: Colors.white,fontSize: 16,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 10),
                              child: Text('Your Cart (2)',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                            /// daal mash container ///
                            Container(
                              height: 70,
                              width: 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 0,
                                    color: Colors.grey
                                  )
                                ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Text('1.',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,right: 150,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Grocery',style: custom_orderlogic.state.headingTitle,),
                                          Row(
                                            children: [
                                              Text("Daal Mash",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text("x2",style: custom_orderlogic.state.headingTitle,),
                                              ),
                                            ],
                                          ),
                                          Text('1 KG',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),

                                        ],
                                      ),
                                    ),
                                    Icon(Icons.delete_forever_outlined,size: 30,color: Color(0xffDF6B6B),)
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15),
                              child: Container(
                                height: 70,
                                width: 330,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 2,
                                          spreadRadius: 0,
                                          color: Colors.grey
                                      )
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text('1.',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15,right: 150,top: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Grocery',style: custom_orderlogic.state.headingTitle,),
                                            Row(
                                              children: [
                                                Text("Daal Mash",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5),
                                                  child: Text("x2",style: custom_orderlogic.state.headingTitle,),
                                                ),
                                              ],
                                            ),
                                            Text('1 KG',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),

                                          ],
                                        ),
                                      ),
                                      Icon(Icons.delete_forever_outlined,size: 30,color: Color(0xffDF6B6B),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,bottom: 10,),
                              child: InkWell(
                                onTap: custom_orderlogic.navigationMethod,
                                child: customlargepurple(
                                  title: 'Continue to Checkout',
                                  textStyle: TextStyle(color: Colors.white,fontSize: 16,),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),

                    ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
