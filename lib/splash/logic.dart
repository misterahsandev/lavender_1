import 'package:get/get.dart';
import 'package:lavender_1/lavaender_intro/view.dart';

import 'state.dart';

class SplashLogic extends GetxController {
  final SplashState state = SplashState();
 navigationMethod() {
   Get.to(Lavaender_introPage());
 }
}
