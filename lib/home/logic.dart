import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/about_screen/view.dart';
import 'package:lavender_1/account_screen/view.dart';
import 'package:lavender_1/contact_us/view.dart';
import 'package:lavender_1/custom_order/view.dart';
import 'package:lavender_1/detailed_product/view.dart';
import 'package:lavender_1/home/view.dart';
import 'package:lavender_1/latest_products/view.dart';
import 'package:lavender_1/read_me/view.dart';
import 'package:lavender_1/signup/view.dart';


import '../cart_screen/view.dart';
import '../latest_blog/view.dart';
import '../packages_product/view.dart';
import '../search_bar/view.dart';
import 'state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();
  navigationMethod(){
    Get.to(Custom_orderPage());
  }
  navigationMethodViewall(){
    Get.to(Latest_blogPage());
  }
  navigationMethodsearchbar(){
    Get.to(Search_barPage());
  }
  navigationMethodpackagesproduct(){
    Get.to(Packages_productPage());
  }
  navigationMethodcart(){
    Get.to(Cart_screenPage());
  }
  navigationMethodlatestproduct(){
    Get.to(Latest_productsPage());
  }
  navigationMethoddetailedproduct(){
    Get.to(Detailed_productPage());
  }
  navigationMethodaccount(){
    Get.to(Account_screenPage());
  }
  navigationMethodnavsearch(){
    Get.to(Search_barPage());
  }
  navigationMethodlogout(){
    Get.to(SignupPage());
  }
  navigationMethodabout(){
    Get.to(About_screenPage());
  }
  navigationMethodcontact(){
    Get.to(Contact_usPage());
  }
  navigationMethodreadme(){
    Get.to(Read_mePage());
  }
}
