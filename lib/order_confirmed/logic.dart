import 'package:get/get.dart';
import 'package:lavender_1/home/view.dart';

import 'state.dart';

class Order_confirmedLogic extends GetxController {
  final Order_confirmedState state = Order_confirmedState();
  navigationMethod(){
    Get.to(HomePage());
  }
}
