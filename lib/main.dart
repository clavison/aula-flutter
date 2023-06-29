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
  containerBuild({Color bgColor = Colors.black, double w = 50, double h = 50, double radius = 0}) {
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
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey,
            child: Center(
              child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  color: Colors.yellow,
                  width: constraints.maxWidth * 0.5,
                  height: constraints.maxHeight * 0.2,
                );
              }),
            ),
          )),
    );
  }
}
