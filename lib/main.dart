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
          appBar: AppBar(title: const Text("App Bar")),
          body: Center(
            child: Container(
              color: Colors.black,
              width: 300,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Expanded(child: containerBuild()),
                Expanded(child: containerBuild()),
                Expanded(child: containerBuild()),
                Expanded(child: containerBuild()),
                Expanded(child: containerBuild()),
              ]),
            ),
          )),
    );
  }
}
