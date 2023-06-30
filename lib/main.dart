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
  String txtDigitado = '';
  TextEditingController txtController = TextEditingController();

  void cliqueBotao() {
    setState(() {
      txtDigitado = txtController.text.toUpperCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text("App Bar")),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(txtDigitado, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink)),
                TextField(controller: txtController, keyboardType: TextInputType.number),
                ElevatedButton(onPressed: cliqueBotao, child: const Text('OK')),
              ],
            ),
          )),
    );
  }
}
