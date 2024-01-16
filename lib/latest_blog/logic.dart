import 'package:get/get.dart';

import '../read_me/view.dart';
import 'state.dart';

class Latest_blogLogic extends GetxController {
  final Latest_blogState state = Latest_blogState();
  navigationMethod(){
Get.to(Read_mePage());
  }
}
