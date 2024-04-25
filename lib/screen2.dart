import 'package:flutter/material.dart';

// menggunakan "stless" untuk mendapatkan kerangka kerja

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
        backgroundColor: Color.fromARGB(255, 118, 231, 122),
      ),
      body: Column(
        children: [
          Text('Andi'),
          Text('Budi'),
          Text('Cici'),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Dedi'),
            ),
          )
        ],
      ),
    );
  }
}
 // menggunakan "stful" untuk mendapatkan kerangka kerja
// class screen3 extends StatefulWidget {
//   const screen3({super.key});

//   @override
//   State<screen3> createState() => _screen3State();
// }

// class _screen3State extends State<screen3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold
//   }
// }
