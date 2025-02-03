import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_x/screen/second_screen.dart';

main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: GetX(),
    );
  }
}

class GetX extends StatelessWidget {
  GetX({super.key});

  RxInt count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetX'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count.value++;
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Obx(
              () {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$count',
                    style: const TextStyle(fontSize: 30),
                  ),
                );
              },
            ),
            ElevatedButton(onPressed: (){
              Get.to(const SecondScreen());
            }, child: const Text('second screen'))

          ],
        ));
  }
}
