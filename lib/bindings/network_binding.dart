import 'package:get/get.dart';
import 'package:mp_charpt/controllers/network_controller.dart';

class NetworkBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => NetworkController());
  }
}