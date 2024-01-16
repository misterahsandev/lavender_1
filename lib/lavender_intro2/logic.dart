import 'package:get/get.dart';
import 'package:lavender_1/signup/view.dart';

import 'state.dart';

class Lavender_intro2Logic extends GetxController {
  final Lavender_intro2State state = Lavender_intro2State();

  bool? rememberCheck = false;
  updateRememberCheck(bool? newValue) {
    rememberCheck= newValue;
  update();
  }
navigationMethod(){
    Get.to(SignupPage());
}
}
