import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_x/controller_binder.dart';
import 'package:get_x/counter_controller.dart';
import 'package:get_x/screen/fourth_screen.dart';
import 'package:get_x/screen/second_screen.dart';
import 'package:get_x/screen/third_screen.dart';



// Main function to run the Flutter application
void main() {
  runApp(const App());
}

// App class which is the root widget of the application
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Initial binding to initialize controllers
      initialBinding: ControllerBinder(),

      // Initial route of the application
      initialRoute: '/',

      // Function to generate routes based on the route name
      onGenerateRoute: (RouteSettings settings) {
        late Widget routeWidget;

        // Check the route name and assign the corresponding widget
        if (settings.name == '/') {
          routeWidget = GetXHome();
        } else if (settings.name == SecondScreen.name) {
          routeWidget = const SecondScreen();
        } else if (settings.name == ThirdScreen.name) {
          routeWidget = const ThirdScreen();
        } else if (settings.name == FourthScreen.name) {
          routeWidget = const FourthScreen();
        }

        // Return a MaterialPageRoute with the assigned widget
        return MaterialPageRoute(builder: (context) {
          return routeWidget;
        });
      },
    );
  }
}

// GetXHome class which is the home screen of the application
class GetXHome extends StatelessWidget {
  GetXHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with a title
      appBar: AppBar(
        title: const Text('GetX'),
      ),

      // FloatingActionButton to increment the counter
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Access the CounterController and call the increment method
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),

      // Body of the home screen
      body: Center(
        child: Column(
          children: [
            // GetBuilder to listen to changes in the CounterController
            GetBuilder<CounterController>(
              builder: (controller) {
                return Text(
                  // Display the current count from the CounterController
                  controller.count.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),

            // ElevatedButton to navigate to the SecondScreen
            ElevatedButton(
              onPressed: () {
                Get.to(const SecondScreen());
              },
              child: const Text('Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}