import 'dart:developer';

import 'package:basic_learn/pages/page_satu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => PageSatu(counter: homeC.counter.value),
          //   ),
          // );
          Get.to(() => PageSatu());
          // Get.toNamed('/pagesatu');
        },
        child: Icon(Icons.arrow_right),
      ),
      appBar: AppBar(
        title: Obx(() => Text('Counter App ${controller.counter}')),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: controller.decrement,
              icon: Icon(Icons.remove),
            ),
            SizedBox(width: 5),
            Obx(() => Text('Counter : ${controller.counter}')),
            SizedBox(width: 5),
            IconButton(onPressed: controller.increment, icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
