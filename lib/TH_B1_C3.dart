import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.grey,
  ];
  int _counter = 0;

  Color _getRandomColor() {
    final Random random = Random();
    final int index = random.nextInt(_colors.length);
    return _colors[index];
  }

  Color _getBackgroundColor() {
    if (_counter % 2 == 0) {
      return _getRandomColor();
    } else {
      return Colors.white;
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My HomeWork'),
      ),
      body: Container(
        color: _getBackgroundColor(),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Click me to change background color'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

