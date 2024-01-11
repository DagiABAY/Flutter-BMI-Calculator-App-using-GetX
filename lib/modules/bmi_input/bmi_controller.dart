import 'package:get/get.dart';
import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class BmiController extends GetxController {
  Rx<Color> inactiveColor = Color(0XFF111328).obs;

  Rx<Color> activeColor = Color(0Xff1D1E33).obs;

  Rx<Color> maleCardColor = Color(0XFF111328).obs;

  Rx<Color> femaleCardColor = Color(0XFF111328).obs;

  Rx<double> height = 180.0.obs;
  Rx<double> weight = 60.0.obs;
  Rx<double> age = 30.0.obs;
  Rx<String> sex="".obs;

  final Rx<double> bmi = Rx<double>(0.0);

  void changeColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor.value == inactiveColor.value) {
        maleCardColor.value = activeColor.value;
        sex.value="male";
        femaleCardColor.value = inactiveColor.value;
      } else {
         sex.value="";
        maleCardColor.value = inactiveColor.value;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor.value == inactiveColor.value) {
        femaleCardColor.value = activeColor.value;
         sex.value="female";
        maleCardColor.value = inactiveColor.value;
      } else {
         sex.value="";
        femaleCardColor.value = inactiveColor.value;
      }
    }
  }
}
