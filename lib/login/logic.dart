import 'package:get/get.dart';
import 'package:lavender_1/home/view.dart';
import 'package:lavender_1/signup/view.dart';

import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  bool? rememberCheck = false;

  updateRememberCheck(bool? newValue) {
    rememberCheck = newValue;
    update();
  }

  navigationMethod() {
    Get.to(const HomePage());
  }
  navigationMethodsignup() {
    Get.to(SignupPage());
  }
}
