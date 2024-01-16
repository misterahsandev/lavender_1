import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customblackbox.dart';
import 'package:lavender_1/customdrawer.dart';
import 'package:lavender_1/custompurplebutton.dart';
import 'package:lavender_1/headdownpage.dart';
import 'package:lavender_1/trollybutton.dart';
import 'package:resize/resize.dart';

import 'logic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final logic = Get.put(HomeLogic());

  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(
        builder: (homelogic) => Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: customthemecolor,
            drawer: Drawer(
              backgroundColor: Colors.black45,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10,top: 25),
                      child: InkWell(
                          onTap: (){Get.back();},
                          child: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15,top: 35),
                      child: Text('Lavender Shopping Services',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                            fontSize: 20),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50,left: 15),
                      child: InkWell(
                          onTap: (){Get.back();},
                          child: SvgPicture.asset('assets/d home.svg')),
                    ),
                    const Divider(color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: homelogic.navigationMethodlatestproduct,
                          child: SvgPicture.asset('assets/d category.svg')),
                    ),
                    const Divider(color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: homelogic.navigationMethod,
                          child: SvgPicture.asset('assets/d customorder.svg')),
                    ),
                    const Divider(color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                          onTap: homelogic.navigationMethodreadme,
                          child: SvgPicture.asset('assets/d blog.svg')),
                    ),
                    const Divider(color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: homelogic.navigationMethodabout,
                          child: SvgPicture.asset('assets/d about.svg')),
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: homelogic.navigationMethodcontact,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/contact.svg'),
                            const Padding(
                              padding: EdgeInsets.only(left:10),
                              child: const Text('Contact us',style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100,left: 90),
                      child: InkWell(
                        onTap: homelogic.navigationMethodlogout,
                        child: Container(
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: customthemecolor,
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 15,right: 8),
                                child: Text('Logout',style:TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400) ,),
                              ),
                              Icon(Icons.logout,color: Colors.white,size: 25,)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white
              ),
              elevation: 0,
              backgroundColor: customthemecolor,
              centerTitle: true,
              title: SizedBox(
                  width: 80.w,
                  child: Image.asset('assets/lavender_logo.png')),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            /// floating action button ///
            floatingActionButton: FloatingActionButton(
              onPressed: homelogic.navigationMethod,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: SvgPicture.asset('assets/customorder.svg'),
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            /// bottom navigation bar ///
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 6.0,
              color: customthemecolor,
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset('assets/home.svg'),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: const Text(
                                'Home',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: InkWell(
                        onTap:homelogic.navigationMethodnavsearch,
                        child: Column(
                          children: [
                            SvgPicture.asset('assets/search.svg'),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Search',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.transparent,
                    ),
                    InkWell(
                      onTap: homelogic.navigationMethodcart,
                      child: Container(
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/cart.svg'),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: homelogic.navigationMethodaccount,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/account.svg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: SizedBox(
                 height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                        children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 10),
                        child: InkWell(
                          onTap: homelogic.navigationMethodsearchbar,
                          child: Container(
                            height: 40.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Colors.white),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 13, right: 7),
                                  child:
                                      Icon(Icons.search, color: Colors.black12),
                                ),
                                Text(
                                  "Search through 1000's of products",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            // height: MediaQuery.of(context).size.height,
                            // width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Man image///
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, right: 15, left: 10, bottom: 10),
                                  child: Image.asset('assets/man imag.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 10),

                                  /// Scroll Able///
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,

                                    /// Category Box ///
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                              height: 40,
                                              width: 132,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.r),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 2,
                                                    spreadRadius: 0,
                                                    color: Colors.grey
                                                        .withOpacity(.5),
                                                    offset: const Offset(0,6 ),
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8, right: 8),
                                                    child: Image.asset(
                                                        'assets/groceries 1.png'),
                                                  ),
                                                  const Text('Grocery',
                                                      style: TextStyle(
                                                          color: Colors.grey)),
                                                ],
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 10),
                                            child: Container(
                                                height: 40,
                                                width: 132,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 9,
                                                      spreadRadius: 0,
                                                      color: Colors.grey
                                                          .withOpacity(.5),
                                                      offset: const Offset(0, 6),
                                                    ),
                                                  ],
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8, right: 8),
                                                      child: Image.asset(
                                                          'assets/teapot 1.png'),
                                                    ),
                                                    const Text('Crockery',
                                                        style: TextStyle(
                                                            color: Colors.grey)),
                                                  ],
                                                )),
                                          ),
                                          Container(
                                            height: 40,
                                            width: 132,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 5,
                                                  spreadRadius: 0,
                                                  color:
                                                      Colors.grey.withOpacity(.5),

                                                ),
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8, right: 8),
                                                  child: Image.asset(
                                                      'assets/television 1 (1).png'),
                                                ),
                                                const Text('Electronics',
                                                    style: TextStyle(
                                                        color: Colors.grey)),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Container(
                                                height: 40,
                                                width: 132,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.grey
                                                          .withOpacity(.5),
                                                      offset: const Offset(0, 6),
                                                    ),
                                                  ],
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8, right: 8),
                                                      child: Image.asset(
                                                          'assets/groceries 1.png'),
                                                    ),
                                                    const Text('Grocery',
                                                        style: TextStyle(
                                                            color: Colors.grey)),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),

                                  /// Scroll Able///
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,

                                    /// Category Box 2 ///
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 10,
                                            ),
                                            child: Container(
                                                height: 40,
                                                width: 132,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.grey
                                                          .withOpacity(.5),
                                                      offset: const Offset(0, 8),
                                                    ),
                                                  ],
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8, right: 8),
                                                      child: Image.asset(
                                                          'assets/cricket 1 (1).png'),
                                                    ),
                                                    const Text('Sports',
                                                        style: TextStyle(
                                                            color: Colors.grey)),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 10),
                                            child: Container(
                                                height: 40,
                                                width: 132,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.grey
                                                          .withOpacity(.5),
                                                      offset: const Offset(0, 6),
                                                    ),
                                                  ],
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8, right: 8),
                                                      child: Image.asset(
                                                          'assets/pesticide 1 (1).png'),
                                                    ),
                                                    const Text('Pesticides',
                                                        style: TextStyle(
                                                            color: Colors.grey)),
                                                  ],
                                                )),
                                          ),
                                          Container(
                                              height: 40,
                                              width: 132,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5,
                                                    spreadRadius: 0,
                                                    color: Colors.grey
                                                        .withOpacity(.5),
                                                    offset: const Offset(0, 6),
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8, right: 8),
                                                    child: Image.asset(
                                                        'assets/cosmetics 1 (1).png'),
                                                  ),
                                                  const Text('Cosmetics',
                                                      style: TextStyle(
                                                          color: Colors.grey)),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                /// Dots ////
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3),
                                        child: Container(
                                          height: 7.h,
                                          width: 7.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            color: Colors.deepPurpleAccent,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 5.h,
                                        width: 5.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: Colors.black12,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 3, left: 3),
                                        child: Container(
                                          height: 5.h,
                                          width: 5.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            color: Colors.black12,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 5.h,
                                        width: 5.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: Colors.black12,
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                /// Packages ///
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, left: 10),
                                  child: Row(
                                    children:  [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text('Packages',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 20,
                                            )),
                                      ),

                                      /// Divider ///
                                      Expanded(
                                        child: Divider(color: Colors.grey),
                                      ),

                                      /// custom purple button ///
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: InkWell(
                                          onTap: homelogic.navigationMethodpackagesproduct,
                                          child: custompurplebutton(
                                            title: 'View all',
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                /// packages container 1 ///
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: homelogic.navigationMethoddetailedproduct,
                                          child: Container(
                                            height: 200,
                                            width: 147,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.r),
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      offset: Offset(2, 0),
                                                    color: Colors.grey
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
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 0),
                                          child: Container(
                                            height: 200,
                                            width: 147,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.r),
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 3,
                                                      spreadRadius: 0,
                                                      offset: Offset(2, 0),
                                                      color: Colors.grey),
                                                ]),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    'assets/electronic.png'),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5, right: 20),
                                                  child: Text(
                                                    'Electronic Product',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
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
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, bottom: 5),
                                          child: Container(
                                            height: 200,
                                            width: 147,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.r),
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 3,
                                                      spreadRadius: 0,
                                                      offset: Offset(2, 0),
                                                      color: Colors.grey),
                                                ]),
                                            child: Column(
                                              children: [
                                                Image.asset('assets/king.png'),
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
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
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                /// Latest Products ///
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, left: 10, top: 30),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text('Latest Product',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 20,
                                            )),
                                      ),

                                      /// Divider ///
                                      Expanded(
                                        child: Divider(
                                          color: Colors.grey,
                                        ),
                                      ),

                                      /// custom purple button ///
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: InkWell(
                                          onTap: homelogic.navigationMethodlatestproduct,
                                          child: custompurplebutton(
                                            title: 'View all',
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
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
                                                    blurRadius: 3,
                                                    spreadRadius: 0,
                                                    offset: Offset(2, 0),
                                                    color: Colors.grey),
                                              ]),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'assets/dal pack.png'),
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
                                                        'Rs 1400',
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
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 0),
                                          child: Container(
                                            height: 200,
                                            width: 147,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.r),
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 3,
                                                      spreadRadius: 0,
                                                      offset: Offset(2, 0),
                                                      color: Colors.grey),
                                                ]),
                                            child: Column(
                                              children: [
                                                Image.asset('assets/ice.png'),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5, right: 20),
                                                  child: Text(
                                                    'Ice Pack',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
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
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, bottom: 5),
                                          child: Container(
                                            height: 200,
                                            width: 147,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.r),
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                      blurRadius: 3,
                                                      spreadRadius: 0,
                                                      offset: Offset(2, 0),
                                                      color: Colors.grey),
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
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
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                /// Packages ///
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, left: 10, top: 30),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text('Latest News',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 20,
                                            )),
                                      ),

                                      /// Divider ///
                                      Expanded(
                                        child: Divider(
                                          color: Colors.grey,
                                        ),
                                      ),

                                      /// custom purple button ///
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                          child: InkWell(
                                            onTap: homelogic.navigationMethodViewall,
                                            child: custompurplebutton(
                                              title: 'View all',
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                        ),
                                          ),
                                      ),
                                    ],
                                  ),
                                ),

                                /// news feeds///
                                customheaddown(),
                                customheaddown(),
                                customheaddown()
                              ],
                            ),
                          ))
                    ]),
                  ),
                ))));
  }
}
