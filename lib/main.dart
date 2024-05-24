import 'package:app_iai_1/models/Client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isClicks = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12)),
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(alignment: Alignment.center, children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: isClicks ? 200 : 250,
                  height: isClicks ? 200 : 250,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurple, shape: BoxShape.circle),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: isClicks ? 150 : 200,
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: isClicks ? 100 : 150,
                  height: isClicks ? 100 : 150,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                ),
                InkWell(
                  onLongPress: () {
                    setState(() {
                      isClicks = !isClicks;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: isClicks ? 50 : 100,
                    height: isClicks ? 50 : 100,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
