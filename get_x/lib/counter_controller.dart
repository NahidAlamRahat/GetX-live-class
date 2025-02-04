// Import the GetX package to use GetX functionalities
import 'package:get/get.dart';

// Define the CounterController class which extends GetXController
class CounterController extends GetxController {
  // Private variable to store the count value
  int _count = 0;

  // Getter to access the count value from outside the class
  int get count => _count;

  // Method to increment the count value
  void increment() {
    _count++; // Increase the count by 1
    update(); // Notify listeners (e.g., GetBuilder) to rebuild the UI
  }
}