import 'package:get/get.dart';
import 'package:lavender_1/lavender_intro2/view.dart';

import 'state.dart';

class Lavaender_introLogic extends GetxController {
  final Lavaender_introState state = Lavaender_introState();
  navigationMethod() {
    Get.to(const Lavender_intro2Page());
  }
}
