import 'package:fidel/util/helpers/network_manager.dart';
import 'package:get/get.dart';

class GenralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
