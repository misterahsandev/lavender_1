import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/customblackbox.dart';

import '../colors.dart';
import '../customorderdetails.dart';
import 'logic.dart';

class Account_screenPage extends StatelessWidget {
  final logic = Get.put(Account_screenLogic());
  final state = Get
      .find<Account_screenLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Account_screenLogic>(
      builder: (account_screenlogic) =>
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
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 305,
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.grey
                                )
                              ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/nobody 1.png'),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                                  child: Text('Sarmad Mehmood',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w500),),
                                ),
                                Text('sarmad@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 14,),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: customBlackButton(
                                    title: 'Edit profile',
                                    textstyle: TextStyle(color: Colors.white,fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 7),
                                  child: Container(
                                    height: 45,
                                    width: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: customthemecolor,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2,
                                          color: Colors.grey
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 2),
                                          child: Icon(Icons.home,color: Colors.white,),
                                        ),
                                        Text('Home',style: TextStyle(fontSize: 12,color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                ),
                                /// my profile ///
                                InkWell(
                                  onTap: account_screenlogic.navigationMethod,
                                  child: Container(
                                    height: 45,
                                    width: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2,
                                          color: Colors.grey
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(Icons.perm_identity),
                                        Text('My profile',style: TextStyle(fontSize: 10),)
                                      ],
                                    ),
                                  ),
                                ),
                                /// password .///
                                 Padding(
                                   padding: const EdgeInsets.only(top: 7,bottom: 7),
                                   child: InkWell(
                                     onTap: account_screenlogic.navigationMethodpassword,
                                     child: Container(
                                      height: 45,
                                      width: 53,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 2,
                                            color: Colors.grey
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 2),
                                            child: Icon(Icons.lock_open),
                                          ),
                                          Text('Password',style: TextStyle(fontSize: 10),)
                                        ],
                                      ),
                                ),
                                   ),
                                 ),
                                /// my order ///
                                InkWell(
                                  onTap: account_screenlogic.navigationMethodmyorder,
                                  child: Container(
                                    height: 45,
                                    width: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2,
                                          color: Colors.grey
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 2),
                                          child: Icon(Icons.library_books_rounded),
                                        ),
                                        Text('My Order',style: TextStyle(fontSize: 10),)
                                      ],
                                    ),
                                  ),
                                ),
                                ///  track order ////
                                Padding(
                                  padding: const EdgeInsets.only(top: 7,bottom: 7),
                                  child: InkWell(
                                    onTap: account_screenlogic.navigationMethodmyordertrack,
                                    child: Container(
                                      height: 45,
                                      width: 53,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 2,
                                            color: Colors.grey
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 2),
                                            child: Icon(Icons.gps_not_fixed),
                                          ),
                                          Text('Track order',style: TextStyle(fontSize: 10),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                /// Logout ///
                                InkWell(
                                  onTap: account_screenlogic.navigationMethodlogout,
                                  child: Container(
                                    height: 45,
                                    width: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2,
                                          color: Colors.grey
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 1),
                                          child: Icon(Icons.power_settings_new_outlined),
                                        ),
                                        Text('Logout',style: TextStyle(fontSize: 12),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    /// default address conatiner ///
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 5,bottom: 10),
                      child: Container(
                        height: 240,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.grey
                            )
                          ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                              ListTile(
                                leading: Text('No Address added....',style: TextStyle(color: Colors.grey),),
                                trailing: customBlackButton(
                                  title: 'Add Address',
                                  textstyle: TextStyle(color: Colors.white,fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 13,bottom: 5),
                                child: Text('Phone number',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,)),
                              ),
                              Text('0306-xxxxxx.',style:TextStyle(color: Colors.grey)),
                              Padding(
                                padding: const EdgeInsets.only(top: 20,bottom: 5),
                                child: Text('Email',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,)),
                              ),
                              Text('sarmad@gmail.com',style:TextStyle(color: Colors.grey))
                            ],
                          ),
                        ),
                      ),
                    ),
                    /// order detail container ///
                    Padding(
                      padding:  EdgeInsets.only(right: 5,bottom: 20),
                      child: customorderdetails(),
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
