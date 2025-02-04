import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get_x/main.dart';

import '../counter_controller.dart';

class FourthScreen extends StatelessWidget {
  static String name = 'fourthScreen';

  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FourthScreen'),
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
                  Get.offAllNamed('/');
                },
                child: const Text('Go to Home Screen')),
          ],
        ),
      ),
    );
  }
}
