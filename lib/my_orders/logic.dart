import 'package:get/get.dart';
import 'package:lavender_1/all_order/view.dart';
import 'package:lavender_1/order_confirmed/view.dart';
import 'package:lavender_1/order_customfile/view.dart';

import 'state.dart';

class My_ordersLogic extends GetxController {
  final My_ordersState state = My_ordersState();
  navigationMethod(){
    Get.to(All_orderPage());
  }
  navigationMethodcustomorder(){
    Get.to(Order_customfilePage());
  }
}
