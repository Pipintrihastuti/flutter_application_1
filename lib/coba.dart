import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 1'),
        backgroundColor: Color.fromARGB(255, 118, 231, 122),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
          child: Text('Pindah ke Halaman 2'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Screen1(),
  ));
}
