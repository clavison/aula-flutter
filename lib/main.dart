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
  containerBuild({Color bgColor = Colors.yellowAccent, double w = 100, double h = 100, double radius = 0}) {
    return Container(
      margin: const EdgeInsets.all(5),
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
        appBar: AppBar(title: const Text("App Bar")),
        body: Container(
          alignment: Alignment.topLeft,
          width: 300,
          height: 400,
          color: Colors.black,
          child: FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.1,
            child: containerBuild() ,
          ),
        ),
      ),
    );
  }
}
