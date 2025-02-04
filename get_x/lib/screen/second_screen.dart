import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x/screen/third_screen.dart';

import '../counter_controller.dart';

class SecondScreen extends StatelessWidget {
  static String name = 'secondScreen';

  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: Icon(Icons.add),
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

            ElevatedButton(onPressed: (){
              Get.offNamed(ThirdScreen.name);
            }, child: const Text('Go to Third Screen')),
          ],
        ),
      ),
    );
  }
}
