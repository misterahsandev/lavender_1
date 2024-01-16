import 'package:get/get.dart';
import 'package:lavender_1/account_screen/view.dart';

import 'state.dart';

class Password_screenLogic extends GetxController {
  final Password_screenState state = Password_screenState();
  navigationMethod(){
    Get.to(Account_screenPage());
  }
}
