import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClick() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffD4EBFB), Color(0xffF2EBFB)],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Click Count', style: TextStyle(fontSize: 30)),
                Text('$counter', style: const TextStyle(fontSize: 50)),
                IconButton(
                    onPressed: onClick,
                    icon: const Icon(Icons.add_circle, size: 50)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
