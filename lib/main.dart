import 'dart:developer';

import 'package:basic_learn/home_page.dart';
import 'package:basic_learn/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page_satu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage(), getPages: AppPages.appRoutes);
  }
}
