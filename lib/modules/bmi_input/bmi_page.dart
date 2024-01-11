import 'package:bmi_calculator_app/modules/bmi_input/bmi_controller.dart';
import 'package:bmi_calculator_app/utils/helper_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color containerColor = Color(0Xff1D1E33);

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BmiController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "BMI Calculator",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: containerColor,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Obx(
                      () {
                        return GestureDetector(
                          onTap: () {
                            controller.changeColor(Gender.male);
                          },
                          child: MyContainer(
                            borderRadius: 10,
                            color: controller.maleCardColor.value,
                            margin: 10,
                            containerChild: const ContainerChild(
                              icon: Icons.male,
                              iconColor: Color(0XFFFFFFFF),
                              text: "MALE",
                              textColor: Color.fromARGB(255, 192, 161, 161),
                              fontSize: 15.0,
                              size: 45.0,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(child: Obx(
                    () {
                      return GestureDetector(
                        onTap: () {
                          controller.changeColor(Gender.female);
                        },
                        child: MyContainer(
                          borderRadius: 10,
                          color: controller.femaleCardColor.value,
                          margin: 10,
                          containerChild: const ContainerChild(
                            icon: Icons.female,
                            iconColor: Color(0XFFFFFFFF),
                            text: "FEMALE",
                            textColor: Color.fromARGB(255, 192, 161, 161),
                            fontSize: 15.0,
                            size: 45.0,
                          ),
                        ),
                      );
                    },
                  )),
                ],
              ),
            ),
            Expanded(child: Obx(() {
              return SingleChildScrollView(
                child: MyContainer(
                  containerChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'HEIGHT',
                        style: TextStyle(color: Color(0XFFBD8E98)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            controller.height.value.round().toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 35.0,
                                color: Color(0XFFFFFFFF)),
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                                color: Color(
                              0XFFBD8E98,
                            )),
                          ),
                        ],
                      ),
                      Center(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTickMarkColor: Colors.white,
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 30.0),
                              thumbColor: const Color(0XFFEB1555),
                              overlayColor: const Color(0X29EB1555),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 13.0)),
                          child: Slider(
                            inactiveColor: Color(0XFF8D8E98),
                            min: 120.0,
                            max: 230.0,
                            value: controller.height.value.toDouble(),
                            onChanged: (double value) {
                              controller.height.value = value;
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  color: containerColor,
                  margin: 10,
                  borderRadius: 10,
                ),
              );
            })),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () {
                      return Expanded(
                        child: MyContainer(
                          containerChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "WIGHT",
                                style: TextStyle(color: Color(0XFFBD8E98)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    controller.weight.value.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  const Text('kg',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      controller.weight.value--;
                                    },
                                    child: Container(
                                      width: 40.0, // Adjust the size as needed
                                      height: 40.0, // Adjust the size as needed
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(
                                            0XFF111328), // Set the color you want
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons
                                              .remove, // Replace with your desired icon
                                          color: Colors
                                              .white, // Set the icon color
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      controller.weight.value++;
                                    },
                                    child: Container(
                                      width: 40.0, // Adjust the size as needed
                                      height: 40.0, // Adjust the size as needed
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(
                                            0XFF111328), // Set the color you want
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons
                                              .add, // Replace with your desired icon
                                          color: Colors
                                              .white, // Set the icon color
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          color: containerColor,
                          margin: 10,
                          borderRadius: 10,
                        ),
                      );
                    },
                  ),
                  Obx(() {
                    return Expanded(
                      child: MyContainer(
                        containerChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "AGE",
                              style: TextStyle(color: Color(0XFFBD8E98)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  controller.age.value.toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 35),
                                ),
                                const Text('yrs',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.age.value--;
                                  },
                                  child: Container(
                                    width: 40.0, // Adjust the size as needed
                                    height: 40.0, // Adjust the size as needed
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(
                                          0XFF111328), // Set the color you want
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons
                                            .remove, // Replace with your desired icon
                                        color:
                                            Colors.white, // Set the icon color
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.age.value++;
                                  },
                                  child: Container(
                                    width: 40.0, // Adjust the size as needed
                                    height: 40.0, // Adjust the size as needed
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(
                                          0XFF111328), // Set the color you want
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons
                                            .add, // Replace with your desired icon
                                        color:
                                            Colors.white, // Set the icon color
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        color: containerColor,
                        margin: 10,
                        borderRadius: 10,
                      ),
                    );
                  })
                ],
              ),
            ),
            Container(
              color: const Color(0xFFEB1555),
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFFEB1555))),
                  onPressed: () {
                    _showBMIResultDialog(controller);
                    // print(controller.weight.value /
                    //     ((controller.height.value / 100) *
                    //         (controller.height.value / 100)));
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
        backgroundColor: const Color(0Xff0A0E21),
      );
    });
  }
}

_showBMIResultDialog(BmiController controller) {
  // double x  = controller.weight.value /
  //     ((controller.height.value / 100) * (controller.height.value / 100))
  //         .round()
  //         ;

  controller.bmi.value = double.parse((controller.weight.value /
          ((controller.height.value / 100) * (controller.height.value / 100)))
      .toStringAsFixed(1));
  Get.defaultDialog(
      backgroundColor: const Color(0Xff0A0E21),
      textConfirm: "OK",
      confirmTextColor: const Color(0xFFFFFFFF),
      onConfirm: () => Get.back(),
      buttonColor: const Color(0xFFEB1555),
      titleStyle: const TextStyle(
          color: Color(0xFFEB1555), fontWeight: FontWeight.w900, fontSize: 35),
      title: "BMI",
      content: Container(
        height: Get.height * 0.2,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              interpretBMI(controller) == ""
                  ? "Enter Gender"
                  : controller.bmi.value.toString(),
              style: interpretBMI(controller) == "Healthy Weight"
                  ? const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                    )
                  : const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 35),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              interpretBMI(controller),
              style: interpretBMI(controller) == "Healthy Weight"
                  ? const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                      fontSize: 35)
                  : const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 35),
            ),
          ]),
        ),
      ));
}

String interpretBMI(BmiController controller) {
  if (controller.age.value < 18) {
    return "BMI calculation for children may vary";
  }

  if (controller.sex.value == "male") {
    if (controller.bmi.value < 18.5) {
      return "Underweight";
    } else if (controller.bmi.value >= 18.5 && controller.bmi.value < 24.9) {
      return "Healthy Weight";
    } else if (controller.bmi.value >= 25 && controller.bmi.value < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  } else if (controller.sex.value == "female") {
    if (controller.bmi.value < 18.5) {
      return "Underweight";
    } else if (controller.bmi.value >= 18.5 && controller.bmi.value < 24.9) {
      return "Healthy Weight";
    } else if (controller.bmi.value >= 25 && controller.bmi.value < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  } else {
    return "";
  }
}
