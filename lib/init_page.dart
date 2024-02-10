import 'package:flutter/material.dart';
import 'controller.dart';
import 'main_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Magic Conch Shell'),
        titleTextStyle: const TextStyle(
          fontFamily: 'Rainbow',
          fontSize: 30,
        ),
        backgroundColor: Colors.black54,
      ),
      body: Stack(
        children: [
          Image.asset(
            'image/cover.jpg',
            opacity: const AlwaysStoppedAnimation(.5),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'image/ask_the_magic_conch.jpg',
                  width: 301,
                  height: 301,
                ),
                Text(
                  controller.answer,
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'KeLai',
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                  },
                  style: const ButtonStyle(),
                  icon: const Icon(Icons.question_mark_outlined),
                  label: const Text(
                    'you can ask anything',
                    style: TextStyle(fontFamily: 'Rainbow', fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
