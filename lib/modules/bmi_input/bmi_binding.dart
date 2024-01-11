import 'package:bmi_calculator_app/modules/bmi_input/bmi_controller.dart';
import 'package:get/get.dart';

class BmiBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BmiController());
  }

}