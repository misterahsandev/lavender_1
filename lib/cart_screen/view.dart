import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customlargepurple.dart';
import 'package:lavender_1/widepurplebutton.dart';

import '../customappbar2.dart';
import 'logic.dart';

class Cart_screenPage extends StatelessWidget {
  final logic = Get.put(Cart_screenLogic());
  final state = Get.find<Cart_screenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Cart_screenLogic>(
      builder: (cart_screenlogic) => Scaffold(
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
              'Cart',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text('Your Order',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                      ),


                      /// daal mong container ///
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
                              Image.asset('assets/daal mong.png'),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 60,top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Grocery',style: cart_screenlogic.state.headingTitle,),
                                    Row(
                                      children: [
                                        Text("Daal Mong",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text("x2",style: cart_screenlogic.state.headingTitle,),
                                        ),
                                      ],
                                    ),
                                    Text('RS.150',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 0
                                    ),
                                  ]
                                ),
                                child: Center(
                                  child: Text('1'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 8),
                                child: Column(
                                  children: [
                                  Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: customthemecolor,
                                  ),
                                    child: Center(child: Icon(Icons.add,color: Colors.white,)),
                                  ),Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: customthemecolor,
                                    ),
                                      child: Center(child: Icon(Icons.remove,color: Colors.white,)),
                                    ),
                                  ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      /// dal chana ///
                      Padding(
                        padding: const EdgeInsets.only(top: 25,bottom: 25),
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
                                Image.asset('assets/daal chana.png'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 80,top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Grocery',style: cart_screenlogic.state.headingTitle,),
                                      Row(
                                        children: [
                                          Text("Daal Chana",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text("x2",style: cart_screenlogic.state.headingTitle,),
                                          ),
                                        ],
                                      ),
                                      Text('RS.150',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 1,
                                        spreadRadius: 0
                                      ),
                                    ]
                                  ),
                                  child: Center(
                                    child: Text('1'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8,left: 8),
                                  child: Column(
                                    children: [
                                    Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: customthemecolor,
                                    ),
                                      child: Center(child: Icon(Icons.add,color: Colors.white,)),
                                    ),Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: customthemecolor,
                                      ),
                                        child: Center(child: Icon(Icons.remove,color: Colors.white,)),
                                      ),
                                    ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      /// dal mash ///
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
                              Image.asset('assets/daal mash.png'),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 60,top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Grocery',style: cart_screenlogic.state.headingTitle,),
                                    Row(
                                      children: [
                                        Text("Daal Mash",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text("x2",style: cart_screenlogic.state.headingTitle,),
                                        ),
                                      ],
                                    ),
                                    Text('RS.150',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 0
                                    ),
                                  ]
                                ),
                                child: Center(
                                  child: Text('1'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 8),
                                child: Column(
                                  children: [
                                  Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: customthemecolor,
                                  ),
                                    child: Center(child: Icon(Icons.add,color: Colors.white,)),
                                  ),Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: customthemecolor,
                                    ),
                                      child: Center(child: Icon(Icons.remove,color: Colors.white,)),
                                    ),
                                  ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,bottom: 20),
                        child: Text('Order Total',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                      ),
                      Container(
                        width: 330,
                        height: 107,
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Cart Total',style: TextStyle(color: Colors.grey),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 190),
                                    child: Text('RS.450',style: TextStyle(color: Colors.grey)),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,bottom: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Shopping',style: TextStyle(color: Colors.grey),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 190),
                                      child: Text('RS.350',style: TextStyle(color: Colors.grey)),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(' Total',style: TextStyle(),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 215),
                                    child: Text('RS.800',style: TextStyle()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: InkWell(
                          onTap: cart_screenlogic.navigationMeethod,
                          child: customlargepurple(
                            title: 'Checkout',
                            textStyle: TextStyle(color: Colors.white,fontSize: 16),
                          ),
                        ),
                      )
                    ],
                ),
              ),
          ),
      ),
    );
  }
}
