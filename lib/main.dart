import 'package:bmi_calculator_app/modules/bmi_input/bmi_binding.dart';
import 'package:bmi_calculator_app/modules/bmi_input/bmi_page.dart';
import 'package:bmi_calculator_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BMI Calculator',
      home: const BmiPage(),
      getPages: AppPages.pages,
      initialBinding: BmiBinding(),
    );
  }
}
