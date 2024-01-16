import 'package:get/get.dart';
import 'package:lavender_1/order_confirmed/logic.dart';
import 'package:lavender_1/order_confirmed/view.dart';

import 'state.dart';

class Checkout_screenLogic extends GetxController {
  final Checkout_screenState state = Checkout_screenState();
  navigationMeethod() {
    Get.to(Order_confirmedPage());
  }
}
