import 'controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Magic Conch Shell'),
          backgroundColor: Colors.purple[200],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                'image/${controller.image}',
                width: 300,
                height: 300,
              ),
              Text(
                controller.answer,
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.getAnswer();
            setState(() {});
          },
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.question_mark,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
