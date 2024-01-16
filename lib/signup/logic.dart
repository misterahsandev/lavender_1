import 'package:get/get.dart';
import 'package:lavender_1/login/view.dart';

import 'state.dart';

class SignupLogic extends GetxController {
  final SignupState state = SignupState();
  bool? rememberCheck = false;
  updateRememberCheck(bool? newValue) {
    rememberCheck= newValue;
    update();
  }
  navigationMethod() {
    Get.to(LoginPage());
  }
}
