import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customlargepurple.dart';

import 'logic.dart';

class Checkout_screenPage extends StatelessWidget {
  final logic = Get.put(Checkout_screenLogic());
  final state = Get
      .find<Checkout_screenLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Checkout_screenLogic>(
        builder: (check_outlogic)
      => Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customthemecolor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text(
          'Checkout',
          style: const TextStyle(color: Colors.white),
        ),
      ),
        backgroundColor: customthemecolor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(

            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: const Radius.circular(20),topRight: const Radius.circular(20)),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('Returning Customers?',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      Text('Login Here',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: customthemecolor),)
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10,top: 10),
                    child: Text('Shipping/Billling Address',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
                  ),
                  Container(
                    height: 404,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// full name ///
                          Text('Full Name',style: check_outlogic.state.headingtext,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10,top: 5),
                        child: Container(
                          height: 44,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Full name',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              )
                            ),
                          ),
                        ),
                        /// Email///
                      ),Text('Email',style: check_outlogic.state.headingtext,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 10),
                        child: Container(
                          height: 44,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '@gmail.com',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              )
                            ),
                          ),
                        ),
                      ),
                          /// Whatsapp number ///
                          Text('Whatsapp number',style: check_outlogic.state.headingtext,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 10),
                        child: Container(
                          height: 44,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '0306-xxxxx',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              )
                            ),
                          ),
                        ),
                      ),
                          /// Other phone ///
                          Text('Other Phone(Optional)',style: check_outlogic.state.headingtext,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 10),
                        child: Container(
                          height: 44,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'xxxxxxx',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              )
                            ),
                          ),
                        ),
                      ),
                          /// Address///
                          Text('Address*',style: check_outlogic.state.headingtext,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 44,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'eg.House# L-1',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(color: Colors.grey),
                              )
                            ),
                          ),
                        ),
                      ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10),
                    child: Text('Special message?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
                  ),
            Text('Order notes(Optional)',style: check_outlogic.state.headingtext,),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                height: 144,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Your Name...',
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white),
                      )
                  ),
                ),
              ),
            ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 20),
                    child: Text('Order Total',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  ),
                  Container(
                    width: 330,
                    height: 207,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                          )
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Daal Mong x1',style: TextStyle(color: Colors.grey),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 160),
                                  child: Text('RS.450',style: TextStyle(color: Colors.grey)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Daal channa x1',style: TextStyle(color: Colors.grey),),
                              Padding(
                                padding: const EdgeInsets.only(left: 150),
                                child: Text('RS.450',style: TextStyle(color: Colors.grey)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Daal Mash x1',style: TextStyle(color: Colors.grey),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 160),
                                  child: Text('RS.150',style: TextStyle(color: Colors.grey)),
                                ),
                              ],
                            ),
                          ),
                          Divider(color: Colors.grey,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sub total',style: TextStyle(color: Colors.black),),
                              Padding(
                                padding: const EdgeInsets.only(left: 190),
                                child: Text('RS.450',style: TextStyle(color: Colors.black)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Shipping',style: TextStyle(color: Colors.black),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 190),
                                  child: Text('RS.350',style: TextStyle(color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(' Total',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Padding(
                                padding: const EdgeInsets.only(left: 180),
                                child: Text('RS.800',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 40),
                    child: InkWell(
                      onTap: check_outlogic.navigationMeethod,
                      child: customlargepurple(
                        title: 'Place order',
                        textStyle: TextStyle(color: Colors.white,fontSize: 16),
                      ),
                    ),
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
