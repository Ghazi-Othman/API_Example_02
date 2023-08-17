import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        home: Scaffold(
      body: Home(),
    ));
  }
}
