import 'package:get/get.dart';

class CounterContoller extends GetxController {
  var counter = 0.obs;

  void increament() {
    counter++;
  }
}
