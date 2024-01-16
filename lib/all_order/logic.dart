import 'package:get/get.dart';
import 'package:lavender_1/id_order/view.dart';

import 'state.dart';

class All_orderLogic extends GetxController {
  final All_orderState state = All_orderState();
  navigationMethod(){
    Get.to(Id_orderPage());
  }
}
