import 'package:get/get.dart';
import 'package:lavender_1/login/view.dart';
import 'package:lavender_1/my_orders/view.dart';
import 'package:lavender_1/password_screen/view.dart';
import 'package:lavender_1/track_order/view.dart';


import '../profile_screen/view.dart';
import 'state.dart';

class Account_screenLogic extends GetxController {
  final Account_screenState state = Account_screenState();
  navigationMethod(){
    Get.to(Profile_screenPage());
  }
  navigationMethodlogout(){
    Get.to(LoginPage());
  }
  navigationMethodpassword(){
    Get.to(Password_screenPage());
  }
  navigationMethodmyorder(){
    Get.to(My_ordersPage());
  }
  navigationMethodmyordertrack(){
    Get.to(Track_orderPage());
  }
}
