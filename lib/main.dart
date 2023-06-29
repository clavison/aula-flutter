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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text("AppBar")),
          body: Center(
            child: Container(
              alignment: Alignment.topLeft,
              width: 300,
              height: 250,
              padding: const EdgeInsets.all(30),
              //color: Colors.yellow,
              decoration: BoxDecoration(
                color: Colors.yellow, //ao utilizar o decoration a cor deve estar nele
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text("Um container amarelo", style: TextStyle(fontSize: 20)),
            ),
          )),
    );
  }
}
