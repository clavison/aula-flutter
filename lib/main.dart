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

  containerBuild() {
    return Container(
      color: Colors.red,
      margin: const EdgeInsets.all(3),
      width: 50,
      height: 50,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("AppBar")),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [containerBuild(), containerBuild(), containerBuild()],
        ),
      ),
    );
  }
}
