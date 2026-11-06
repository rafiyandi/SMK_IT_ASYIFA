import 'dart:developer';

import 'package:basic_learn/page_satu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// class HomeController extends GetxController {
//   var counter = 0;

//   void increment() {
//     counter++;
//     update();
//     log('Nilai Counter $counter');
//   }

//   void decrement() {
//     counter--;
//     update();
//     log('Nilai Counter $counter');
//   }
// }

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    log("Di Rebuild Ulang Dari AWAL");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => PageSatu()),
          // );
          // Get.to(() => PageSatu());
          Get.toNamed('/pagesatu');
        },
        child: Icon(Icons.arrow_right),
      ),
      appBar: AppBar(title: Obx(() => Text('Counter App ${homeC.counter}'))),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: homeC.decrement, icon: Icon(Icons.remove)),
            SizedBox(width: 5),
            Obx(() => Text('Counter : ${homeC.counter}')),
            SizedBox(width: 5),
            IconButton(onPressed: homeC.increment, icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
