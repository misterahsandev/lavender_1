import 'package:get/get.dart';
import 'package:lavender_1/checkout_screen/view.dart';

import 'state.dart';

class Custom_orderLogic extends GetxController {
  final Custom_orderState state = Custom_orderState();
  navigationMethod(){
    Get.to(Checkout_screenPage());
  }
}
