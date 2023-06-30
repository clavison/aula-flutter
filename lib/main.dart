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
    List<Color> cores = [Colors.red, Colors.green, Colors.blue, Colors.deepPurple,
                        Colors.yellow, Colors.grey, Colors.black, Colors.pink];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Imagem 200 X 200")),
        body: ListView.builder(
          itemCount: cores.length,
          itemBuilder: (BuildContext context, int index) {
            return containerBuild(bgColor: cores[index]);
          },
        ),
      ),
    );
  }
}
