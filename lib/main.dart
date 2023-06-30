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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("App Bar")),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Texto simples"),
              SizedBox(height: 10),
              Text("Texto com estilo", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Por padrão quando um texto não cabe no espaço destinado a ele, ocorre uma quebra de linha", style: TextStyle(color: Colors.purple, fontSize: 18)),
              SizedBox(height: 10),
              Text("Alterando a propriedade softWrap = false a quebra de linha não ocorre mais.", softWrap: false, style: TextStyle(color: Colors.green, fontSize: 18)),
              SizedBox(height: 10),
              Text("A propriedade overflow configura o tratamento.", softWrap: false, style: TextStyle(color: Colors.black, fontSize: 12)),
              SizedBox(height: 10),
              Text("overflow = TextOverflow.clip corta xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.", overflow: TextOverflow.clip, softWrap: false, style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text("overflow = TextOverflow.fade desvanece xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.", overflow: TextOverflow.fade, softWrap: false, style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text("overflow = TextOverflow.ellipsis acrescrenta  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.", overflow: TextOverflow.ellipsis, softWrap: false, style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text("A propriedade maxLines configura o limite máximo de linhas que o texto poderá utilizar antes de ocorrer a quebra e o tratamento configurado", maxLines: 2, overflow: TextOverflow.ellipsis, softWrap: false, style: TextStyle(fontSize: 18)),
        
        
          ],),
        )
      ),
    );
  }
}
