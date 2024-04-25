import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  TextEditingController angka1Controlller = TextEditingController();
  String tampilhasil = "hasil kosong";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator'),
        backgroundColor: Color.fromARGB(255, 218, 116, 236),
      ),
      body: Column(
        children: [
          TextField(
            controller: angka1Controlller,
          ),
          ElevatedButton(
            onPressed: () {
              print(angka1Controlller.text);
              setState(() {
                tampilhasil = angka1Controlller.text;
              });
              
            },
            child: Text('Tampil'),
          ),
          Text(tampilhasil),
        ],
      ),
    );
  }
}
