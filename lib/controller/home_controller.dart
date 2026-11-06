import 'dart:developer';

import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter++;

    log('Nilai Counter $counter');
  }

  void decrement() {
    counter--;

    log('Nilai Counter $counter');
  }
}
