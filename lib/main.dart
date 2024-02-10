import 'controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'init_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitPage(),
    );
  }
}
