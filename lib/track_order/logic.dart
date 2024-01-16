import 'package:get/get.dart';
import 'package:lavender_1/tracking_details/view.dart';

import 'state.dart';

class Track_orderLogic extends GetxController {
  final Track_orderState state = Track_orderState();
  navigationMethod(){
    Get.to(Tracking_detailsPage());
  }
}
