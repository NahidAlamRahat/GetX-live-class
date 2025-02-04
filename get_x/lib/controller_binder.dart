import 'package:get/get.dart';
import 'package:get_x/counter_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut( () => CounterController());
  }

}