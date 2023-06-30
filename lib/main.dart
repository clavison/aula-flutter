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

  String tipoBtn = 'Não identificado';

    void cliqueBotao(String texto) {
      setState(() {
        tipoBtn = texto;
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(tipoBtn, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink)),
                ElevatedButton(onPressed: () => cliqueBotao('ElevatedButton'), child: const Text('ElevatedButton')),
                TextButton(onPressed: () => cliqueBotao('TextButton'), child: const Text('TextButton')),
                OutlinedButton(onPressed: () => cliqueBotao('OutlinedButton'), child: const Text('OutlinedButton')),
                IconButton(onPressed: () => cliqueBotao('IconButton'), icon: const Icon(Icons.home, color: Colors.red, size: 64)),
                FloatingActionButton(onPressed: () => cliqueBotao('FloatingActionButton'), child: const Icon(Icons.add, color: Colors.white, size: 32)),
              ],
            ),
          )),
    );
  }
}
