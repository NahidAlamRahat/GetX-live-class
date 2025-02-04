import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x/screen/fourth_screen.dart';

import '../counter_controller.dart';

class ThirdScreen extends StatelessWidget {
  static String name = 'thirdScreen';

  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThirdScreen'),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<CounterController>(
              builder: (controller) {
                return Text(
                  controller.count.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },),

            ElevatedButton(
              onPressed: () {
                Get.toNamed(FourthScreen.name);
              },
              child: const Text('Go to Fourth Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
