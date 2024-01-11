import 'package:bmi_calculator_app/modules/bmi_input/bmi_binding.dart';
import 'package:bmi_calculator_app/modules/bmi_input/bmi_page.dart';
import 'package:bmi_calculator_app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoute.home,
      page: () => const BmiPage(),
      binding: BmiBinding(),
    )
  ];
}
