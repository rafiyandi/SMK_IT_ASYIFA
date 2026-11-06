import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../routes/app_routes_named.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutesNamed.home);
        },
        child: Icon(Icons.arrow_right),
      ),
      appBar: AppBar(title: Text('Initial Page')),
    );
  }
}
