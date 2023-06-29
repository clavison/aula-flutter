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
        theme: ThemeData(
          brightness: Brightness.light, // Define o tema como dark
          primaryColor: Colors.blue, //cor primaria do APP
          fontFamily: 'Roboto', // Fonte padrão do aplicativo
          appBarTheme: const AppBarTheme(color: Colors.deepPurple),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("AppBar"),
            actions: const [Icon(Icons.exit_to_app), Icon(Icons.edit_note)],),
          body: const Text("Conteúdo do Scaffold"),
          drawer: const Drawer(),
          bottomNavigationBar: BottomNavigationBar(items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          ]),
          floatingActionButton: const FloatingActionButton(onPressed: null,child: Icon(Icons.add),),
        ));
  }
}
