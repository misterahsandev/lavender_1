import 'package:get/get.dart';
import 'package:lavender_1/checkout_screen/view.dart';

import 'state.dart';

class Cart_screenLogic extends GetxController {
  final Cart_screenState state = Cart_screenState();
  navigationMeethod(){
    Get.to(Checkout_screenPage());
  }
}
