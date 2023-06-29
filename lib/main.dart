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
  containerBuild({Color bgColor = Colors.yellowAccent, double w = 50, double h = 50, double radius = 0}) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: w,
      height: h,
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(radius)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("AppBar")),
        body: Center(
          child: Container(
            color: Colors.black, height: 300, width: 300,
            child: Row(children: [
              containerBuild(),containerBuild(),
              containerBuild(),containerBuild(),
              containerBuild(),
            ]),
          ),
        ),
      ),
    );
  }
}
