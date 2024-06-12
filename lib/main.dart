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
  bool showAppBar = true;

  void toggleAppBar() {
    setState(() {
      showAppBar = !showAppBar;
    });
  }

  void onClick() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
      home: Scaffold(
        appBar: showAppBar
            ? AppBar(
                title: const CounterAppBar(),
              )
            : null,
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
              children: [
                const Text('toggle AppBar'),
                IconButton(
                    onPressed: toggleAppBar,
                    icon: Icon(
                        showAppBar ? Icons.visibility : Icons.visibility_off,
                        size: 50)),
                const SizedBox(
                  height: 200,
                ),
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

class CounterAppBar extends StatelessWidget {
  const CounterAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Let\'s count!!',
        style: TextStyle(
          fontSize: 30,
          color: Theme.of(context).textTheme.titleLarge!.color,
        ));
  }
}
