import 'package:flutter/material.dart';
import 'package:flutter_application_1/gambar_screen.dart';
import 'package:flutter_application_1/list_screen.dart';
// import 'package:flutter_application_1/list_screen.dart';
// import 'package:flutter_application_1/screen2.dart';
// import 'kalkulator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 116, 212, 61)),
        useMaterial3: true,
      ),
      home: ListScreen(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('beranda rumah'),
        backgroundColor: Color.fromARGB(255, 200, 91, 219),
      ),
      body: Text('Hello World'),
    );
  }
}
