import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'controller.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  Controller controller = Controller();
  late final AnimationController _controller;
  // bool init = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }
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
              children: <Widget>[
                Builder(builder: (context) {
                  if (_controller.isCompleted) {
                    return Column(
                      children: [
                        Image.asset(
                          'image/${controller.image}',
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
                      ],
                    );
                  } else {
                    return Lottie.asset(
                      'assets/Animation - 1707470170832.json',
                      height: 375,
                      width: 320,
                      controller: _controller,
                      repeat: false,
                      onLoaded: (composition) {
                        _controller.duration = composition.duration;
                      },
                    );
                  }
                }),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _controller.reset();
                    _controller.forward().then((value) {
                      controller.getAnswer();
                      setState(() {});
                    });

                    setState(() {});
                  },
                  style: const ButtonStyle(),
                  icon: const Icon(Icons.question_mark_outlined),
                  label: const Text(
                    'you can ask anything',
                    style: TextStyle(fontFamily: 'Rainbow', fontSize: 30),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
