import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';

import 'logic.dart';

class Contact_usPage extends StatelessWidget {
  final logic = Get.put(Contact_usLogic());
  final state = Get
      .find<Contact_usLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Contact_usLogic>(builder: (contact_uslogic) =>
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
            padding: const EdgeInsets.only(top: 20,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Address:', style:contact_uslogic.state.boldtext,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 10),
                  child: Text('Shop#27, Street#3, Makka Commercial Street, Canal Road, Faisalabad ',style: contact_uslogic.state.headingtext,),
                ),
                Row(
                  children: [
                    Text('Email:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                    Text('support@lavender.com.pk Phone',style: contact_uslogic.state.headingtext,),
                  ],
                ), Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 10),
                  child: Row(
                    children: [
                      Text('Phone Number:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                      Text('(+92) 345-5558571',style: contact_uslogic.state.headingtext,),
                    ],
                  ),
                ),
                Text('Delivery Hours:',style: contact_uslogic.state.boldtext,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 10),
                  child: Text('Sat-Thu 10:00am - 6:00pm',style: contact_uslogic.state.headingtext,),
                ),
                Text('Comment:',style: contact_uslogic.state.boldtext,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Text("For order status inquiry, To cancel and return ordered items or For any other concerns,"
                      " feel free to contact us through this Form and we'll get back to you ASAP.",style: contact_uslogic.state.headingtext,),
                ),
            Container(
              height: 400,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Leave us a message:',style: contact_uslogic.state.boldtext,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 10),
                        child: Text(
                          'Full name',
                          style: contact_uslogic.state.richtext,
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 5, right: 3, top: 3),
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Write you name',
                              hintStyle: contact_uslogic.state.headingtext,
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
                        ),
                      )
                    ],
                  ),

                  ///Email///
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 10),
                        child: Text(
                          'Email',
                          style: contact_uslogic.state.richtext,
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 5, right: 3, top: 3),
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'example@gmail.com',
                                hintStyle: contact_uslogic.state.headingtext,
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
                        ),
                      )
                    ],
                  ),

                  ///Subject///
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 10),
                        child: Text(
                          'Subject',
                          style: contact_uslogic.state.richtext,
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 5, right: 3, top: 3),
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Order Update',
                                hintStyle: contact_uslogic.state.headingtext,
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
                        ),
                      )
                    ],
                  ),

                  ///Repeat Password///
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 10),
                        child: Text(
                          'Message',
                          style: contact_uslogic.state.richtext,
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 5, right: 3, top: 3),
                        child: Container(
                          height: 80,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Start typing',
                              hintStyle: contact_uslogic.state.headingtext,
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
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
